FROM python:3.12-slim 
 
                                                                                
RUN pip install --break-system-packages flask flask-mysql                        
                                                                                 
# Set the working directory                                                      
WORKDIR /opt                                                                     
                                                                                  
# Copy the app.py file to the container                                          
COPY app.py /opt/app.py                                                          

# Copy the templates directory to the container
COPY templates /opt/templates
                                                                                  
# Set the FLASK_APP environment variable                                         
ENV FLASK_APP=app.py                                                             
                                                                                 
# Expose the port that Flask will run on                                         
EXPOSE 8080                                                                      
                                                                                  
# Command to run the application           

CMD ["flask", "run", "--host=0.0.0.0"]                                       
