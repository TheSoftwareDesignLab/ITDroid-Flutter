.class public Lcom/evancharlton/mileage/Mileage;
.super Landroid/app/TabActivity;
.source "Mileage.java"


# static fields
.field public static final TAG_FILLUP:Ljava/lang/String; = "fillups"

.field public static final TAG_HISTORY:Ljava/lang/String; = "history"

.field public static final TAG_STATISTICS:Ljava/lang/String; = "statistics"

.field public static final TAG_VEHICLES:Ljava/lang/String; = "vehicles"

.field public static final VISIBLE_TAB:Ljava/lang/String; = "visible_tab"


# instance fields
.field private mTabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/evancharlton/mileage/Mileage;)Landroid/widget/TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/evancharlton/mileage/Mileage;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/evancharlton/mileage/Mileage;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method private final add(Landroid/view/Menu;ILjava/lang/Class;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "string"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            "I",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)",
            "Landroid/view/MenuItem;"
        }
    .end annotation

    .prologue
    .local p3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    const/4 v0, 0x0

    .line 83
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method private createTabSpec(Ljava/lang/String;Ljava/lang/Class;II)Landroid/widget/TabHost$TabSpec;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p3, "string"    # I
    .param p4, "icon"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;II)",
            "Landroid/widget/TabHost$TabSpec;"
        }
    .end annotation

    .prologue
    .line 64
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    iget-object v1, p0, Lcom/evancharlton/mileage/Mileage;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 65
    .local v0, "spec":Landroid/widget/TabHost$TabSpec;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 66
    invoke-virtual {p0, p3}, Lcom/evancharlton/mileage/Mileage;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/evancharlton/mileage/Mileage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 67
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v1, 0x7f03001e

    invoke-virtual {p0, v1}, Lcom/evancharlton/mileage/Mileage;->setContentView(I)V

    .line 30
    invoke-virtual {p0}, Lcom/evancharlton/mileage/Mileage;->getTabHost()Landroid/widget/TabHost;

    move-result-object v1

    iput-object v1, p0, Lcom/evancharlton/mileage/Mileage;->mTabHost:Landroid/widget/TabHost;

    .line 31
    iget-object v1, p0, Lcom/evancharlton/mileage/Mileage;->mTabHost:Landroid/widget/TabHost;

    const-string v2, "fillups"

    const-class v3, Lcom/evancharlton/mileage/FillupActivity;

    const v4, 0x7f070017

    const v5, 0x7f02000b

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/evancharlton/mileage/Mileage;->createTabSpec(Ljava/lang/String;Ljava/lang/Class;II)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 33
    iget-object v1, p0, Lcom/evancharlton/mileage/Mileage;->mTabHost:Landroid/widget/TabHost;

    const-string v2, "history"

    const-class v3, Lcom/evancharlton/mileage/FillupListActivity;

    const v4, 0x7f070018

    const v5, 0x7f02000e

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/evancharlton/mileage/Mileage;->createTabSpec(Ljava/lang/String;Ljava/lang/Class;II)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 35
    iget-object v1, p0, Lcom/evancharlton/mileage/Mileage;->mTabHost:Landroid/widget/TabHost;

    const-string v2, "statistics"

    const-class v3, Lcom/evancharlton/mileage/VehicleStatisticsActivity;

    const v4, 0x7f070019

    const v5, 0x7f020011

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/evancharlton/mileage/Mileage;->createTabSpec(Ljava/lang/String;Ljava/lang/Class;II)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 37
    iget-object v1, p0, Lcom/evancharlton/mileage/Mileage;->mTabHost:Landroid/widget/TabHost;

    const-string v2, "vehicles"

    const-class v3, Lcom/evancharlton/mileage/VehicleListActivity;

    const v4, 0x7f070006

    const v5, 0x7f020014

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/evancharlton/mileage/Mileage;->createTabSpec(Ljava/lang/String;Ljava/lang/Class;II)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 40
    iget-object v1, p0, Lcom/evancharlton/mileage/Mileage;->mTabHost:Landroid/widget/TabHost;

    new-instance v2, Lcom/evancharlton/mileage/Mileage$1;

    invoke-direct {v2, p0}, Lcom/evancharlton/mileage/Mileage$1;-><init>(Lcom/evancharlton/mileage/Mileage;)V

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 49
    invoke-virtual {p0}, Lcom/evancharlton/mileage/Mileage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "visible_tab"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "requestedTab":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/Mileage;->switchTo(Ljava/lang/String;)V

    .line 53
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 72
    const v0, 0x7f070007

    const-class v1, Lcom/evancharlton/mileage/ServiceIntervalsListActivity;

    invoke-direct {p0, p1, v0, v1}, Lcom/evancharlton/mileage/Mileage;->add(Landroid/view/Menu;ILjava/lang/Class;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020008

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 74
    const v0, 0x7f070065

    const-class v1, Lcom/evancharlton/mileage/ImportExportActivity;

    invoke-direct {p0, p1, v0, v1}, Lcom/evancharlton/mileage/Mileage;->add(Landroid/view/Menu;ILjava/lang/Class;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020006

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 76
    const v0, 0x7f070044

    const-class v1, Lcom/evancharlton/mileage/SettingsActivity;

    invoke-direct {p0, p1, v0, v1}, Lcom/evancharlton/mileage/Mileage;->add(Landroid/view/Menu;ILjava/lang/Class;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020009

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 78
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public switchTo(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/evancharlton/mileage/Mileage;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public switchToHistoryTab()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "history"

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/Mileage;->switchTo(Ljava/lang/String;)V

    .line 57
    return-void
.end method
