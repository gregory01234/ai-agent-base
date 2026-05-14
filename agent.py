class Agent:
    def __init__(self, name: str, role: str):
        self.name = name
        self.role = role
        self.memory = []

    def act(self, input_data: str):
        return f"[{self.name}] processed: {input_data}"
