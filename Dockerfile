# Menggunakan image node sebagai base image
FROM node:18

# Menentukan working directory di dalam container
WORKDIR /usr/src/app

# Menyalin file package.json dan package-lock.json ke container
COPY package*.json ./

# Install dependencies
RUN npm install

# Menyalin seluruh file ke dalam container
COPY . .

# Expose port 3000
EXPOSE 3000

# Perintah untuk menjalankan aplikasi
CMD ["node", "index.js"]
