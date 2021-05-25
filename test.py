import envoy_engine
import envoy_requests
import envoy_requests.common.engine


if __name__ == "__main__":
    envoy_requests.common.engine.Engine.log_level = envoy_engine.LogLevel.Debug
    envoy_requests.get("https://api.lyft.com/ping")
