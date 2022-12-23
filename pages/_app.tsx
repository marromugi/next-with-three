import '../styles/globals.css'
import type { AppProps } from 'next/app'

export default function App({ Component, pageProps }: AppProps) {
  return (
    <div style={{ width: '100vw', height: '100vh' }}>
      <Component {...pageProps} />
    </div>
  )
}
