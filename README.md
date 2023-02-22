# Jerry
let task = URLSession.shared.dataTask(with: url) { data, response, error in
                if let data = data {
                    DispatchQueue.main.async {
                        self.responseData = String(data: data, encoding: .utf8) ?? ""
                    }
                }
            }
            task.resume()
