import mysql.connector
import pandas as pd
import matplotlib.pyplot as plt
from mysql.connector import Error
conn = mysql.connector.connect(
    host ="localhost",
    user = "root",
    password="Zwb199408171019!",
    database="project"
)
if conn.is_connected():
    print("Connected to MySQL database")

cursororders = conn.cursor()
cursororders.execute("SELECT * FROM orders")
orders = cursororders.fetchall()

cursorsalesagent = conn.cursor()
cursorsalesagent.execute("SELECT * FROM salesagent")
salesagent = cursorsalesagent.fetchall()

cursoremployee =conn.cursor()
cursoremployee.execute("SELECT * FROM employee")
employee = cursoremployee.fetchall()

# First Chart, showing agent order under each manager using piechart 
salesagentDF = pd.DataFrame(salesagent,columns=[col[0] for col in cursorsalesagent.description])
ordersDF = pd.DataFrame(orders,columns=[col[0]for col in cursororders.description])

# Merge ordersDF with SalesAgentDF on agentID
merge_df = pd.merge(ordersDF,salesagentDF,left_on="AgentID",right_on="AgentID")
orders_per_manager = merge_df.groupby("Manager").size().reset_index(name="OrderInfo")
plt.figure(figsize=(8, 6))
plt.pie(orders_per_manager["OrderInfo"], labels=orders_per_manager["Manager"], autopct='%1.1f%%', startangle=140)
plt.title("Orders by Manager's Team")
plt.axis('equal')  # Equal aspect ratio ensures the pie chart is circular.
plt.show()

# Second Chart, using histogram return number of agents in each team 
agents_per_team = salesagentDF["Manager"].value_counts().reset_index()
agents_per_team.columns = ["Manager","AgentCount"]
plt.figure(figsize=(8,6))
plt.bar(agents_per_team["Manager"], agents_per_team["AgentCount"], color='mediumseagreen', edgecolor='black')
plt.title("Number of Agents Under Each Manager")
plt.xlabel("Manager")
plt.ylabel("Number of Agents")
plt.xticks(rotation=45)
plt.grid(axis='y', linestyle='--', alpha=0.6)
plt.tight_layout()
plt.show()

# Third Chart, show number of orders for each agent, rank from top to low 
orders_per_agent=ordersDF["AgentID"].value_counts().reset_index()
orders_per_agent.columns =["AgentID","OrderCount"]
orders_per_agent = orders_per_agent.merge(salesagentDF[["AgentID","AgentName"]],left_on="AgentID",right_on="AgentID")
Orders_per_agent = orders_per_agent.sort_values(by="OrderCount",ascending=False)
plt.figure(figsize=(10, 6))
plt.bar(orders_per_agent["AgentName"], orders_per_agent["OrderCount"], color='mediumorchid', edgecolor='black')
plt.title("Number of Orders by Agent (Ranked)")
plt.xlabel("Agent")
plt.ylabel("Number of Orders")
plt.xticks(rotation=45)
plt.grid(axis='y', linestyle='--', alpha=0.6)
plt.tight_layout()
plt.show()
# close connection
cursororders.close()
cursorsalesagent.close()
cursoremployee.close()
conn.close()