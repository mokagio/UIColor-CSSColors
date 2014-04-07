
#import "ViewController.h"
#import <UIColor+CSSColors.h>

static NSString *CellIdentifier = @"CellIdentifier";

@interface ViewController () <UICollectionViewDataSource>
@property (nonatomic, strong) NSArray *colors;
@property (nonatomic, strong) UICollectionView *collectionView;
@end

@implementation ViewController

- (instancetype)init
{
    self = [super init];
    if (!self) { return nil; }

    self.colors = @[
                    [UIColor aliceBlueColor],
                    [UIColor antiqueWhiteColor],
                    [UIColor aquaColor],
                    [UIColor aquamarineColor],
                    [UIColor azureColor],
                    [UIColor beigeColor],
                    [UIColor bisqueColor],
                    [UIColor blanchedAlmondColor],
                    [UIColor blueVioletColor],
                    [UIColor burlyWoodColor],
                    [UIColor cadetBlueColor],
                    [UIColor chartreuseColor],
                    [UIColor chocolateColor],
                    [UIColor coralColor],
                    [UIColor cornflowerBlueColor],
                    [UIColor cornsilkColor],
                    [UIColor crimsonColor],
                    [UIColor darkBlueColor],
                    [UIColor darkCyanColor],
                    [UIColor darkGoldenRodColor],
                    [UIColor darkGreyColor],
                    [UIColor darkGreenColor],
                    [UIColor darkKhakiColor],
                    [UIColor darkMagentaColor],
                    [UIColor darkOliveGreenColor],
                    [UIColor darkorangeColor],
                    [UIColor darkOrchidColor],
                    [UIColor darkRedColor],
                    [UIColor darkSalmonColor],
                    [UIColor darkSeaGreenColor],
                    [UIColor darkSlateBlueColor],
                    [UIColor darkSlateGrayColor],
                    [UIColor darkSlateGreyColor],
                    [UIColor darkTurquoiseColor],
                    [UIColor darkVioletColor],
                    [UIColor deepPinkColor],
                    [UIColor deepSkyBlueColor],
                    [UIColor dimGrayColor],
                    [UIColor dimGreyColor],
                    [UIColor dodgerBlueColor],
                    [UIColor fireBrickColor],
                    [UIColor floralWhiteColor],
                    [UIColor forestGreenColor],
                    [UIColor fuchsiaColor],
                    [UIColor gainsboroColor],
                    [UIColor ghostWhiteColor],
                    [UIColor goldColor],
                    [UIColor goldenRodColor],
                    [UIColor greyColor],
                    [UIColor greenYellowColor],
                    [UIColor honeyDewColor],
                    [UIColor hotPinkColor],
                    [UIColor indianRedColor],
                    [UIColor indigoColor],
                    [UIColor ivoryColor],
                    [UIColor khakiColor],
                    [UIColor lavenderColor],
                    [UIColor lavenderBlushColor],
                    [UIColor lawnGreenColor],
                    [UIColor lemonChiffonColor],
                    [UIColor lightBlueColor],
                    [UIColor lightCoralColor],
                    [UIColor lightCyanColor],
                    [UIColor lightGoldenRodYellowColor],
                    [UIColor lightGreyColor],
                    [UIColor lightGreenColor],
                    [UIColor lightPinkColor],
                    [UIColor lightSalmonColor],
                    [UIColor lightSeaGreenColor],
                    [UIColor lightSkyBlueColor],
                    [UIColor lightSlateGrayColor],
                    [UIColor lightSlateGreyColor],
                    [UIColor lightSteelBlueColor],
                    [UIColor lightYellowColor],
                    [UIColor limeColor],
                    [UIColor limeGreenColor],
                    [UIColor linenColor],
                    [UIColor maroonColor],
                    [UIColor mediumAquaMarineColor],
                    [UIColor mediumBlueColor],
                    [UIColor mediumOrchidColor],
                    [UIColor mediumPurpleColor],
                    [UIColor mediumSeaGreenColor],
                    [UIColor mediumSlateBlueColor],
                    [UIColor mediumSpringGreenColor],
                    [UIColor mediumTurquoiseColor],
                    [UIColor mediumVioletRedColor],
                    [UIColor midnightBlueColor],
                    [UIColor mintCreamColor],
                    [UIColor mistyRoseColor],
                    [UIColor moccasinColor],
                    [UIColor navajoWhiteColor],
                    [UIColor navyColor],
                    [UIColor oldLaceColor],
                    [UIColor oliveColor],
                    [UIColor oliveDrabColor],
                    [UIColor orangeRedColor],
                    [UIColor orchidColor],
                    [UIColor paleGoldenRodColor],
                    [UIColor paleGreenColor],
                    [UIColor paleTurquoiseColor],
                    [UIColor paleVioletRedColor],
                    [UIColor papayaWhipColor],
                    [UIColor peachPuffColor],
                    [UIColor peruColor],
                    [UIColor pinkColor],
                    [UIColor plumColor],
                    [UIColor powderBlueColor],
                    [UIColor rosyBrownColor],
                    [UIColor royalBlueColor],
                    [UIColor saddleBrownColor],
                    [UIColor salmonColor],
                    [UIColor sandyBrownColor],
                    [UIColor seaGreenColor],
                    [UIColor seaShellColor],
                    [UIColor siennaColor],
                    [UIColor silverColor],
                    [UIColor skyBlueColor],
                    [UIColor slateBlueColor],
                    [UIColor slateGrayColor],
                    [UIColor slateGreyColor],
                    [UIColor snowColor],
                    [UIColor springGreenColor],
                    [UIColor steelBlueColor],
                    [UIColor tanColor],
                    [UIColor tealColor],
                    [UIColor thistleColor],
                    [UIColor tomatoColor],
                    [UIColor turquoiseColor],
                    [UIColor violetColor],
                    [UIColor wheatColor],
                    [UIColor whiteSmokeColor],
                    [UIColor yellowGreenColor],
                    ];

    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    self.collectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds
                                             collectionViewLayout:flowLayout];
    self.collectionView.dataSource = self;
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:CellIdentifier];

    [self.view addSubview:self.collectionView];
}

#pragma mark - UICollectionViewDataSource

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [self.colors count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UIColor *color = self.colors[indexPath.row];

    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:CellIdentifier
                                                                           forIndexPath:indexPath];
    cell.backgroundColor = color;

    return cell;
}

@end
