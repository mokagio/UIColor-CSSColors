
#import "ViewController.h"
#import <UIColor+CSSColors.h>

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) NSArray *colors;
@property (nonatomic, strong) UITableView *tableView;
@end

@implementation ViewController

- (instancetype)init
{
    self = [super init];
    if (!self) { return nil; }

    self.colors = @[

                    ];

    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;

    [self.view addSubview:self.tableView];
}

#pragma mark - UICollectionViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.colors count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"CellIdentifier";

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];

    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }

    NSString *colorName = self.colors[indexPath.row];
    cell.backgroundColor = [self colorWithName:colorName];

    return cell;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *colorName = self.colors[indexPath.row];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[colorName lowercaseString]
                                                    message:@""
                                                   delegate:nil
                                          cancelButtonTitle:@":)"
                                          otherButtonTitles:nil];
    [alert show];
}

#pragma mark - Status Bar

- (BOOL)prefersStatusBarHidden
{
    return YES;
}

#pragma mark - Color

- (UIColor *)colorWithName:(NSString *)name
{
    NSString *selectorString = [NSString stringWithFormat:@"css%@Color", name];
    Class colorClass = [UIColor class];
    return [colorClass performSelector:NSSelectorFromString(selectorString)];
}

- (NSArray *)colors
{
    return @[
             @"Aliceblue",
             @"Antiquewhite",
             @"Aqua",
             @"Aquamarine",
             @"Azure",
             @"Beige",
             @"Bisque",
             @"Black",
             @"Blanchedalmond",
             @"Blue",
             @"Blueviolet",
             @"Brown",
             @"Burlywood",
             @"Cadetblue",
             @"Chartreuse",
             @"Chocolate",
             @"Coral",
             @"Cornflowerblue",
             @"Cornsilk",
             @"Crimson",
             @"Cyan",
             @"Darkblue",
             @"Darkcyan",
             @"Darkgoldenrod",
             @"Darkgray",
             @"Darkgreen",
             @"Darkgrey",
             @"Darkkhaki",
             @"Darkmagenta",
             @"Darkolivegreen",
             @"Darkorange",
             @"Darkorchid",
             @"Darkred",
             @"Darksalmon",
             @"Darkseagreen",
             @"Darkslateblue",
             @"Darkslategray",
             @"Darkslategrey",
             @"Darkturquoise",
             @"Darkviolet",
             @"Deeppink",
             @"Deepskyblue",
             @"Dimgray",
             @"Dimgrey",
             @"Dodgerblue",
             @"Firebrick",
             @"Floralwhite",
             @"Forestgreen",
             @"Fuchsia",
             @"Gainsboro",
             @"Ghostwhite",
             @"Gold",
             @"Goldenrod",
             @"Gray",
             @"Green",
             @"Greenyellow",
             @"Grey",
             @"Honeydew",
             @"Hotpink",
             @"Indianred",
             @"Indigo",
             @"Ivory",
             @"Khaki",
             @"Lavender",
             @"Lavenderblush",
             @"Lawngreen",
             @"Lemonchiffon",
             @"Lightblue",
             @"Lightcoral",
             @"Lightcyan",
             @"Lightgoldenrodyellow",
             @"Lightgray",
             @"Lightgreen",
             @"Lightgrey",
             @"Lightpink",
             @"Lightsalmon",
             @"Lightseagreen",
             @"Lightskyblue",
             @"Lightslategray",
             @"Lightslategrey",
             @"Lightsteelblue",
             @"Lightyellow",
             @"Lime",
             @"Limegreen",
             @"Linen",
             @"Magenta",
             @"Maroon",
             @"Mediumaquamarine",
             @"Mediumblue",
             @"Mediumorchid",
             @"Mediumpurple",
             @"Mediumseagreen",
             @"Mediumslateblue",
             @"Mediumspringgreen",
             @"Mediumturquoise",
             @"Mediumvioletred",
             @"Midnightblue",
             @"Mintcream",
             @"Mistyrose",
             @"Moccasin",
             @"Navajowhite",
             @"Navy",
             @"Oldlace",
             @"Olive",
             @"Olivedrab",
             @"Orange",
             @"Orangered",
             @"Orchid",
             @"Palegoldenrod",
             @"Palegreen",
             @"Paleturquoise",
             @"Palevioletred",
             @"Papayawhip",
             @"Peachpuff",
             @"Peru",
             @"Pink",
             @"Plum",
             @"Powderblue",
             @"Purple",
             @"Red",
             @"Rosybrown",
             @"Royalblue",
             @"Saddlebrown",
             @"Salmon",
             @"Sandybrown",
             @"Seagreen",
             @"Seashell",
             @"Sienna",
             @"Silver",
             @"Skyblue",
             @"Slateblue",
             @"Slategray",
             @"Slategrey",
             @"Snow",
             @"Springgreen",
             @"Steelblue",
             @"Tan",
             @"Teal",
             @"Thistle",
             @"Tomato",
             @"Turquoise",
             @"Violet",
             @"Wheat",
             @"White",
             @"Whitesmoke",
             @"Yellow",
             @"Yellowgreen",
             ];
}

@end
