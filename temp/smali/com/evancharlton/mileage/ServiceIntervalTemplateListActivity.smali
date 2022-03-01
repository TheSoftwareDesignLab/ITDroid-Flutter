.class public Lcom/evancharlton/mileage/ServiceIntervalTemplateListActivity;
.super Lcom/evancharlton/mileage/BaseListActivity;
.source "ServiceIntervalTemplateListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MENU_CREATE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/evancharlton/mileage/BaseListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFrom()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "description"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected getUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->BASE_URI:Landroid/net/Uri;

    const-string v1, "intervals/templates"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 82
    :goto_0
    return-void

    .line 68
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/evancharlton/mileage/ServiceIntervalTemplateListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 72
    :pswitch_1
    invoke-virtual {p0}, Lcom/evancharlton/mileage/ServiceIntervalTemplateListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 73
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Lcom/evancharlton/mileage/ServiceIntervalTemplateListActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/evancharlton/mileage/ServiceIntervalTemplateListActivity$1;-><init>(Lcom/evancharlton/mileage/ServiceIntervalTemplateListActivity;Landroid/content/ContentResolver;)V

    invoke-virtual {v1}, Lcom/evancharlton/mileage/ServiceIntervalTemplateListActivity$1;->start()V

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x7f09000a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 40
    const/4 v0, 0x1

    const v1, 0x7f070022

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020002

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 42
    invoke-super {p0, p1}, Lcom/evancharlton/mileage/BaseListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onItemClick(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 35
    const-class v0, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;

    invoke-virtual {p0, p1, p2, v0}, Lcom/evancharlton/mileage/ServiceIntervalTemplateListActivity;->loadItem(JLjava/lang/Class;)V

    .line 36
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 47
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 52
    invoke-super {p0, p1}, Lcom/evancharlton/mileage/BaseListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 49
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/evancharlton/mileage/ServiceIntervalTemplateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/ServiceIntervalTemplateListActivity;->startActivity(Landroid/content/Intent;)V

    .line 50
    const/4 v0, 0x1

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected setupEmptyView()V
    .locals 4

    .prologue
    .line 57
    iget-object v1, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateListActivity;->mEmptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 58
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030008

    iget-object v3, p0, Lcom/evancharlton/mileage/ServiceIntervalTemplateListActivity;->mEmptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, "emptyView":Landroid/view/View;
    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v1, 0x7f09000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method
