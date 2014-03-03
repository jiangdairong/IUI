//
//  DetailViewController.m
//  homework1
//
//  Created by dairong on 2014/3/1.
//  Copyright (c) 2014年 dairong. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _TitleLabel.text = _DetailModal[0];
    _DescriptionLabel.text = _DetailModal[1];
    _imageView.image = [UIImage imageNamed:_DetailModal[2]];
    
    self.navigationItem.title = _DetailModal[0];
    
    if ([_TitleLabel.text isEqualToString:@"PAPA SMURF"]) {
        content.text = @"你可以從他的白鬍子與身上穿的紅褲子、頭上戴的紅帽子，輕易地分辨出這位村長老爹。老爹的年紀不少於542歲，卻也不會超過這個數字，因為小精靈是不會變老的（這樣的說法有些弔詭，我想當他出現在地球上的時候，應該就是這個年紀了吧…）。他常運用智慧去提醒別人而非直接命令別人該做什麼；此外，他也會挺身援救那些身陷險境的年輕小精靈們。對了，他同時也是一位相當厲害的煉丹術士喔！";
    }
    if ([_TitleLabel.text isEqualToString:@"SMURFETTE"]) {
        content.text = @"小美人是邪惡的巫師賈不妙（Gargamel）用法術所創造出來的藍色小精靈，她最初的任務是臥底在小精靈的村莊裡，挑撥離間、製造麻煩。後來，村長老爹對她施了魔法，將她變成了一位人見人愛的嫵媚小精靈，而她也成為小村莊裡罕見的女精靈。";
    }
    if ([_TitleLabel.text isEqualToString:@"BRAINY"]) {
        content.text = @"小聰明（BRAINY）他是一位用嚴肅的態度看待所有事的藍色小精靈。小聰明自認是一位醒世者，他認為老爹所說的每件事都必須謹慎遵守，結果弄得每個小精靈都得忍耐著他的囉唆。表面上，他致力於解決麻煩，但事實上，聰明反被聰明誤，他才是那個不斷引起麻煩的人。";
    }
    if ([_TitleLabel.text isEqualToString:@"JOKE"]) {
        content.text = @"小搗蛋隨時隨地都在想著如何惡整別人，譬如，他常把會爆炸的禮盒送給其他的小精靈，而他的快樂總是建築在別人的痛苦上。由於小搗蛋的惡作劇點子有如湧泉般源源不絕，因此經常搞得大家忍不住發脾氣，不過有時候他也會不小心反整到自己。";
    }
    if ([_TitleLabel.text isEqualToString:@"GROUCHY"]) {
        content.text = @"不管別人說些什麼，小牢騷總是滿腹的不滿意。他總是喃喃自語地抱怨著每件事，而且充滿了消極的人生觀。其實小牢騷並不壞，他只是因為生性軟弱，所以只好用不斷的牢騷來掩飾內心的脆弱。他暗戀著小美人，不過他非常討厭別人發現這件事。";
    }
    if ([_TitleLabel.text isEqualToString:@"COOK SMURF"]) {
        content.text = @"你絕不會認錯他，因為他穿戴著獨一無二的廚師高帽和圍裙。他住的地方總會飄出令人食指大動的香味，只要走進他家，滿桌的熱湯、鬆餅、餡餅和甜點，保證會讓你想大快朵頤。他是一個美食主義者，也是個名符其實的天才小廚師。";
    }
    if ([_TitleLabel.text isEqualToString:@"GREEDY"]) {
        content.text = @"吃，吃，吃！對小貪吃來說，不管是沙士、熱湯、乳酪，還是水果，每樣東西都是可口的。不過他真正喜歡吃的，還是他時常從小廚師家裡偷來的美味甜點。小貪吃 的座右銘是：「我們應該要為了吃而活著，而不是為了活著而吃。（One should live to smurf, and not smurf to live.）」";
    }
    if ([_TitleLabel.text isEqualToString:@"HARMONY"]) {
        content.text = @"小樂師擁有偉大音樂家的靈魂，但是缺乏天分。他在小精靈交響樂團裡吹奏小號，但是從他的小號所傳出的卻總是五音不全的樂音。所以想要打個盹的藍色小精靈，必須要自備一副耳塞才有辦法入睡。";
    }
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
