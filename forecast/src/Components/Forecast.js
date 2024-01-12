function Forecast(props) {
    // Set default value for forecast
    const { forecast = {} } = props;

    return (
        <div>
            <h1>This is my Weather REACT app called Forecast</h1>
            <div>
                <h2>From API</h2>
                {Object.keys(forecast).map((key) => {
                    const forecastItem = forecast[key];
                    console.log('forecast:', key);

                    // Check if the current key is 'data' and it is an object
                    if (key === 'data' && typeof forecastItem === 'object') {
                        return (
                            <div key={key}>
                                {Object.keys(forecastItem).map((dataKey) => (
                                    <p key={dataKey}>
                                        {dataKey}: {forecastItem[dataKey]}
                                    </p>
                                ))}
                            </div>
                        );
                    }

                    // Render other non-object properties
                    return (
                        <div key={key}>
                            <p>{key}: {forecastItem.toString()}</p>
                        </div>
                    );
                })}
            </div>
        </div>
    );
}

export default Forecast;