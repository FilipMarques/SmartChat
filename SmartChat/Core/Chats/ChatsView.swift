//
//  ChatsView.swift
//  SmartChat
//
//  Created by Filipe Camargo Marques on 17/12/24.
//

import SwiftUI

struct ChatsView: View {

    @State private var chats: [ChatModel] = ChatModel.mocks

    var body: some View {
        NavigationStack {
            List {
                ForEach(chats) { chat in
                    /*@START_MENU_TOKEN@*/Text(chat.id)/*@END_MENU_TOKEN@*/
                }
            }
            .navigationTitle("Chats")
        }
    }
}

#Preview {
    ChatsView()
}
