.class public Lcom/evancharlton/mileage/VehicleTypeListActivity;
.super Lcom/evancharlton/mileage/BaseListActivity;
.source "VehicleTypeListActivity.java"


# static fields
.field private static final MENU_CREATE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/evancharlton/mileage/BaseListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected canDelete(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    .line 53
    invoke-virtual {p0}, Lcom/evancharlton/mileage/VehicleTypeListActivity;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getFrom()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 35
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
    .line 43
    sget-object v0, Lcom/evancharlton/mileage/provider/FillUpsProvider;->BASE_URI:Landroid/net/Uri;

    const-string v1, "vehicles/types/"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 18
    const/4 v0, 0x1

    const v1, 0x7f07001f

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020002

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 20
    invoke-super {p0, p1}, Lcom/evancharlton/mileage/BaseListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onItemClick(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 48
    const-class v0, Lcom/evancharlton/mileage/VehicleTypeActivity;

    invoke-virtual {p0, p1, p2, v0}, Lcom/evancharlton/mileage/VehicleTypeListActivity;->loadItem(JLjava/lang/Class;)V

    .line 49
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 25
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 30
    invoke-super {p0, p1}, Lcom/evancharlton/mileage/BaseListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 27
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/evancharlton/mileage/VehicleTypeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/VehicleTypeListActivity;->startActivity(Landroid/content/Intent;)V

    .line 28
    const/4 v0, 0x1

    goto :goto_0

    .line 25
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
