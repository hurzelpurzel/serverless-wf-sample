

############################ rmq backed ####
# create service to play around
kn service create cloudevents-player --image ruromero/cloudevents-player:latest --env BROKER_URL=http://rabbitmq-broker-broker-ingress.eventing-sandbox.svc.cluster.local 
# use it as sink
kn trigger create cloudevents-player --broker rabbitmq-broker --sink cloudevents-player