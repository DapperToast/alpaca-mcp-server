FROM python:3.13-slim

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

# Expose the HTTP port (default MCP HTTP transport port, e.g., 8000)
EXPOSE 3000

# Use HTTP transport mode
CMD ["python", "alpaca_mcp_server.py", "--transport", "http", "--port", "3000", "--host", "0.0.0.0"]