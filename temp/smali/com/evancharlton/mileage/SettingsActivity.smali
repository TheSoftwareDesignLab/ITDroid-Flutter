.class public Lcom/evancharlton/mileage/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field public static final NAME:Ljava/lang/String; = "com.evancharlton.mileage_preferences"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 27
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v3, 0x7f03001c

    invoke-virtual {p0, v3}, Lcom/evancharlton/mileage/SettingsActivity;->addPreferencesFromResource(I)V

    .line 30
    const-string v3, "about"

    invoke-virtual {p0, v3}, Lcom/evancharlton/mileage/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 33
    .local v0, "about":Landroid/preference/Preference;
    :try_start_0
    invoke-virtual {p0}, Lcom/evancharlton/mileage/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/evancharlton/mileage/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .local v2, "version":Ljava/lang/String;
    :goto_0
    const v3, 0x7f070058

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/evancharlton/mileage/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 39
    new-instance v3, Lcom/evancharlton/mileage/SettingsActivity$1;

    invoke-direct {v3, p0}, Lcom/evancharlton/mileage/SettingsActivity$1;-><init>(Lcom/evancharlton/mileage/SettingsActivity;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 47
    const-string v3, "units"

    invoke-virtual {p0, v3}, Lcom/evancharlton/mileage/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 49
    return-void

    .line 35
    .end local v2    # "version":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 36
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "<unknown version>"

    .restart local v2    # "version":Ljava/lang/String;
    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .param p1, "id"    # I

    .prologue
    const v8, 0x104000a

    const/4 v3, 0x0

    .line 65
    packed-switch p1, :pswitch_data_0

    .line 104
    :pswitch_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 67
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070060

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070061

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/evancharlton/mileage/SettingsActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/evancharlton/mileage/SettingsActivity$2;-><init>(Lcom/evancharlton/mileage/SettingsActivity;I)V

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 78
    :pswitch_2
    sget-object v1, Lcom/evancharlton/mileage/provider/tables/FieldsTable;->URI:Landroid/net/Uri;

    sget-object v2, Lcom/evancharlton/mileage/provider/tables/FieldsTable;->PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/evancharlton/mileage/SettingsActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 80
    .local v6, "c":Landroid/database/Cursor;
    const-string v0, "com.evancharlton.mileage_preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/evancharlton/mileage/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 82
    .local v7, "prefs":Landroid/content/SharedPreferences;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    const-string v2, "title"

    new-instance v3, Lcom/evancharlton/mileage/SettingsActivity$4;

    invoke-direct {v3, p0, v6, v7}, Lcom/evancharlton/mileage/SettingsActivity$4;-><init>(Lcom/evancharlton/mileage/SettingsActivity;Landroid/database/Cursor;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/evancharlton/mileage/SettingsActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/evancharlton/mileage/SettingsActivity$3;-><init>(Lcom/evancharlton/mileage/SettingsActivity;I)V

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070036

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x7f070059
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    .line 53
    const-string v1, "units"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    const v1, 0x7f070059

    invoke-virtual {p0, v1}, Lcom/evancharlton/mileage/SettingsActivity;->showDialog(I)V

    .line 60
    :goto_0
    return v0

    .line 56
    :cond_0
    const-string v1, "meta_field"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    const v1, 0x7f07005b

    invoke-virtual {p0, v1}, Lcom/evancharlton/mileage/SettingsActivity;->showDialog(I)V

    goto :goto_0

    .line 60
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
