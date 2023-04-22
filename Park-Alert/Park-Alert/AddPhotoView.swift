//
//  AddPhotoView.swift
//  Park-Alert
//
//  Created by Joanie O'Donnell on 3/26/23.
//

import SwiftUI

struct AddPhotosView: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var selectedImages: [UIImage]
    
    var body: some View {
        NavigationView {
            VStack {
                if selectedImages.isEmpty {
                    Text("No images selected")
                        .padding(.top)
                } else {
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(selectedImages, id: \.self) { image in
                                Image(uiImage: image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 150)
                                    .padding(.horizontal)
                            }
                        }
                    }
                }
                
                Spacer()
                
                Button(action: {
                    self.showImagePicker()
                }) {
                    Text("Add Photos")
                }
                .padding()
            }
            .navigationTitle("Add Photos")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarItems(trailing: Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Text("Done")
                    .foregroundColor(.accentColor)
            })
        }
    }
    
    private func showImagePicker() {
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        imagePickerController.allowsEditing = false
        imagePickerController.sourceType = .photoLibrary
        UIApplication.shared.windows.first?.rootViewController?.present(imagePickerController, animated: true, completion: nil)
    }
}

extension AddPhotosView: UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage = info[.originalImage] as? UIImage {
            selectedImages.append(selectedImage)
        }
        
        picker.dismiss(animated: true, completion: nil)
    }
}


struct AddPhotoView_Previews: PreviewProvider {
    static var previews: some View {
        AddPhotoView()
    }
}
