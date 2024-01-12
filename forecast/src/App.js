import logo from './logo.svg';
import React, { useState, useEffect } from 'react';
import axios from 'axios';
import Forecast from './Components/Forecast'; // Ensure correct import path
import './App.css';

const API_URL = 'http://localhost:3000/api/v1/forecast/20152';

function App() {
    const [forecastData, setForecastData] = useState(null);
    const [loading, setLoading] = useState(true);

    useEffect(() => {
        const fetchForecastData = async () => {
            try {
                const response = await axios.get(API_URL);
                setForecastData(response.data);
            } catch (error) {
                console.error('Error fetching forecast data:', error);
            } finally {
                setLoading(false);
            }
        };

        fetchForecastData();
    }, []);

    if (loading) {
        // Loading state, you can replace this with a loading spinner or message
        return <div>Loading forecast data...</div>;
    }

    return (
        <div className="App">
            {forecastData ? (
                <Forecast forecast={forecastData} />
            ) : (
                <div>No forecast data available.</div>
            )}
        </div>
    );
}

export default App;