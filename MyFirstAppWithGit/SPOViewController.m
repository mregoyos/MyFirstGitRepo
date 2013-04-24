//
//  SPOViewController.m
//  MyFirstAppWithGit
//
//  Created by Maria Regoyos on 4/17/13.
//  Copyright (c) 2013 Maria Regoyos. All rights reserved.
//

#import "SPOViewController.h"

@interface SPOViewController ()
@property (weak, nonatomic) IBOutlet UILabel *etiqueta;
@property (weak, nonatomic) IBOutlet UITextField *campoTexto;

@end

@implementation SPOViewController
- (IBAction)Cambiartextoetiquta:(UIButton *)sender
{
	self.etiqueta.text=@"Hola git. Voy a borrar la etiqueta, desde botón";
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
	self.etiqueta.text=textField.text;
	[textField resignFirstResponder];
	return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField
{
	self.etiqueta.text=textField.text;
	[textField resignFirstResponder];

}
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
	self.etiqueta.text=textField.text;
	[textField resignFirstResponder];
	return YES;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	//self.campoTexto.delegate=self; Done in StoryBoard
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
