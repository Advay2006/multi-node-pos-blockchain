def run(plan, args):
    service_config = ServiceConfig(
        image="ethereum/client-go:v1.11.5",
        ports={
            "service-port": PortSpec(number=8080, transport_protocol="TCP")
        }
    )

    plan.add_service(
        name="node-1",
        config=service_config,
        description = "adding node 1"
    )




    # msg
    plan.print("Multi-node PoS blockchain successfully started!")







# Define the run function
# def run(plan):
    #Log a message to indicate that Kurtosis is working
    #plan.print("hello world!")
