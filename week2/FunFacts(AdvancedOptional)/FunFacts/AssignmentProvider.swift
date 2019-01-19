//
//  assignmentProvider.swift
//  FunFacts
//
//  Created by 徐若芸 on 2019/1/16.
//  Copyright © 2019 Jo Hsu. All rights reserved.
//

struct AssignmentProvider {
    let texts = [
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus." ,
    "Contrary to popular belief, Lorem Ipsum is not simply random text." ,
    "Richard McClintock, a Latin professor at Hampden-Sydney College in " ,
    "looked up one of the more obscure Latin words, consectetur" ,
    "from a Lorem Ipsum passage, and going through the cites of the word" ,
    "This book is a treatise on the theory of ethics, very popular during the." ,
    "The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.." ,
    "The standard chunk of Lorem Ipsum used since the 1500s is reproduced." ,
    "There are many variations of passages of Lorem Ipsum available." ,
    "but the majority have suffered alteration in some form"
    ]
    
    func randomText() -> String {
        let randomNumber = Int.random(in: 0..<texts.count)
        return texts[randomNumber]
    }
}
