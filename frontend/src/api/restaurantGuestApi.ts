import axios from './axios'

export const getEntryQRCode = () => {
    return new Promise((resolve, reject) => {
        axios.get('/restaurant_guests.json')
            .then(res => {
                console.log(res)
                resolve(res)
            })
            .catch(err => {
                console.log(err)
                reject(err)
            })
    })
}