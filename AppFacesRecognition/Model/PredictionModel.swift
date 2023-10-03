//
//  PredictionModel.swift
//  AppFacesRecognition
//
//  Created by Daniela Ramos Garcia on 29/09/23.
//


import Foundation
import SwiftUI
import Vision

class PredictionStatus: ObservableObject {
    @Published var modelUrl = URL(fileURLWithPath: "")
    // TODO - replace with the name of your classifier
    @Published var modelObject = Guapometro_2()
    @Published var topLabel = ""
    @Published var topConfidence = ""
    
    // Live prediction results
    @Published var livePrediction: LivePredictionResults = [:]
    
    func setLivePrediction(with results: LivePredictionResults, label: String, confidence: String) {
        livePrediction = results
        topLabel = label
        topConfidence = confidence
    }
}
