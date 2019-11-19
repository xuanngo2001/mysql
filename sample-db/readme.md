# Run script    
    # Adapt parameter values to your setup.
    mysql -hlocalhost -uroot2 -ppassword < mysql-sample-db.sql
    
# Update design digram
    plantuml.sh -tpng sample-db-design.puml
    
# References
- ER cardinality: https://db.grussell.org/section004.html
