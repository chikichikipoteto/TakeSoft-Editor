import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [react()],
  base: './',
  server: {
    host: true,
    port: 5173,
    open: true,
    strictPort: false,
  },
  preview: {
    host: 'localhost',
    port: 5000,
    open: true,
  },
});
