
1. Clone this repository to your local machine:

   ```
   git clone https://github.com/Sash0k411/blog
   ```

2. Navigate to the project directory:

   ```
   cd blog
   ```

3. Build the Docker image:

   ```
   docker build -t blog .
   ```

4. Run the Docker container:

   ```
   docker run -p 3000:3000 blog
   ```

   After running this command, blog will be accessible at [http://localhost:3000].
