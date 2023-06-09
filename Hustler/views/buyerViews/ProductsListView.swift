//
//  ProductsListView.swift
//  Hustler
//
//  Created by Mahmoud Mraisi on 19/03/2023.
//

import SwiftUI

struct ProductsListView: View {
    @EnvironmentObject var dataSource:DataSoruce
    @EnvironmentObject var fireDBHelper : FireDBHelper
    @State private var store: Store = Store()
    var body: some View {
        VStack{
            Section(header: Text(store.name).font(.headline)){
                List{
                    ForEach(dataSource.store.productsList){ product in
                        NavigationLink(destination: ProductDetailView(product: product).environmentObject(fireDBHelper)) {
                            ProductItem(product: product)
                        }
                    }
                }
                .frame(height: 500)
            }

            Spacer()
        }
    }
}

