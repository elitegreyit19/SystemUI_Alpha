.class public Lcom/android/systemui/statusbar/policy/NetworkController;
.super Landroid/content/BroadcastReceiver;
.source "NetworkController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkController$2;,
        Lcom/android/systemui/statusbar/policy/NetworkController$DataRoamingObserver;,
        Lcom/android/systemui/statusbar/policy/NetworkController$EthernetHandler;,
        Lcom/android/systemui/statusbar/policy/NetworkController$WifiHandler;,
        Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;,
        Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;,
        Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;,
        Lcom/android/systemui/statusbar/policy/NetworkController$Operator;
    }
.end annotation


# static fields
.field public static final ACTION_CB_CLEAR:Ljava/lang/String; = "com.sec.android.app.mms.CB_CLEAR"

.field public static final ACTION_SMS_CB_DIRECT_DISPLAY_RECEIVED:Ljava/lang/String; = "com.sec.android.app.mms.SMS_CB_DIRECT_DISPLAY_RECEIVED"

.field static final CHATTY:Z = false

.field private static final CONFIGURATION_FAILED:I = 0x2

.field private static final CONFIGURATION_SUCCEEDED:I = 0x1

.field private static DATA_ACTIVITY_IN:I = 0x0

.field private static DATA_ACTIVITY_INOUT:I = 0x0

.field private static DATA_ACTIVITY_NONE:I = 0x0

.field private static DATA_ACTIVITY_OUT:I = 0x0

.field private static final DATA_ROAMING:Ljava/lang/String; = "data_roaming"

.field static final DEBUG:Z = false

.field private static final ETHERNET_DATA_ACTIVITY_NOTIFICATION:I = 0x1

.field private static ETH_STATE_CHANGED_ACTION:Ljava/lang/String; = null

.field private static ETH_STATE_UNKNOWN:I = 0x0

.field private static final EVENT_UPDATE_SIGNAL_STRENGTH:I = 0x46

.field private static EXTRA_ETH_STATE:Ljava/lang/String; = null

.field private static final HW_CONNECTED:I = 0x3

.field private static final HW_DISCONNECTED:I = 0x4

.field private static final INET_CONDITION_THRESHOLD:I = 0x32

.field static final REQ_NO_SIM_NOTIFICATION:I = 0x111

.field static final REQ_ROAMING_NOTIFICATION:I = 0x222

.field private static final RSSI_AIRPLANE_STATE:I = 0x0

.field private static final RSSI_IN_SVC_STATE:I = 0x2

.field private static final RSSI_NO_SVC_STATE:I = 0x1

.field static final TAG:Ljava/lang/String; = "StatusBar.NetworkController"

.field static final TW_TAG:Ljava/lang/String; = "STATUSBAR-NetworkController"


# instance fields
.field private final EXTRA_IS_VALID_PLMN:Ljava/lang/String;

.field LTE_ON_CDMA_FALSE:I

.field LTE_ON_CDMA_TRUE:I

.field LTE_ON_CDMA_UNKNOWN:I

.field ethernetManager:Ljava/lang/Object;

.field ethernetManagerClass:Ljava/lang/Class;

.field ethernetMessenger:Landroid/os/Messenger;

.field ethernetServiceMessengerMethod:Ljava/lang/reflect/Method;

.field ethhandler:Landroid/os/Handler;

.field mATTMobileLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mATTNetworkName:Ljava/lang/String;

.field mAirplaneIconId:I

.field private mAirplaneMode:Z

.field mAlwaysShowCdmaRssi:Z

.field mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBluetoothTetherDisconnected:Z

.field private mBluetoothTetherIconId:I

.field private mBluetoothTethered:Z

.field mCombinedLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mCombinedSignalIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mConnected:Z

.field private mConnectedNetworkType:I

.field private mConnectedNetworkTypeName:Ljava/lang/String;

.field mContentDescriptionCombinedSignal:Ljava/lang/String;

.field mContentDescriptionDataType:Ljava/lang/String;

.field mContentDescriptionEthernet:Ljava/lang/String;

.field mContentDescriptionPhoneSignal:Ljava/lang/String;

.field mContentDescriptionWifi:Ljava/lang/String;

.field mContentDescriptionWimax:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mCurSvcSate:I

.field mCurrDataTypeIconId:I

.field private mCurrentSignalStrength:I

.field mDataActive:Z

.field mDataActivity:I

.field mDataAndWifiStacked:Z

.field mDataConnected:Z

.field mDataDirectionIconId:I

.field mDataDirectionIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mDataDirectionOverlayIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mDataIconList:[I

.field mDataNetType:I

.field private mDataRoamingObserver:Lcom/android/systemui/statusbar/policy/NetworkController$DataRoamingObserver;

.field private mDataRoamingSetting:Z

.field private mDataServiceState:I

.field mDataSignalIconId:I

.field mDataState:I

.field mDataTypeATTstyle:Z

.field mDataTypeBrand:Ljava/lang/String;

.field mDataTypeIconId:I

.field mDataTypeIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mDataTypeTMOstyle:Z

.field mEmergencyLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mEthernetActivity:I

.field mEthernetActivityIconId:I

.field mEthernetActivityIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mEthernetChannel:Lcom/android/internal/util/AsyncChannel;

.field mEthernetConnected:Z

.field mEthernetEnabled:Z

.field mEthernetIconId:I

.field mEthernetIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mHasMobileDataFeature:Z

.field mHspaDataDistinguishable:Z

.field private mInetCondition:I

.field private mIsWimaxEnabled:Z

.field private mLastAirplaneMode:Z

.field private mLastBluetoothTethered:Z

.field private mLastCB:Ljava/lang/String;

.field mLastCombinedLabel:Ljava/lang/String;

.field mLastCombinedSignalIconId:I

.field mLastDataDirectionIconId:I

.field mLastDataDirectionOverlayIconId:I

.field mLastDataState:I

.field mLastDataTypeIconId:I

.field mLastEthernetActivityIconId:I

.field mLastEthernetIconId:I

.field mLastPhoneSignalIconId:I

.field private mLastPlmn:Ljava/lang/String;

.field mLastRoamingIconId:I

.field private mLastShowPlmn:Z

.field private mLastShowSpn:Z

.field mLastSignalLevel:I

.field private mLastSpn:Ljava/lang/String;

.field mLastWifiIconId:I

.field mLastWimaxIconId:I

.field mMaxLevelOfSignalStrengthIndicator:I

.field private mMessageUpdateNotDone:Z

.field mMobileActivityIconId:I

.field mMobileLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mMoreIconView:Landroid/view/View;

.field mNetworkName:Ljava/lang/String;

.field mNetworkNameDefault:Ljava/lang/String;

.field mNetworkNameSeparator:Ljava/lang/String;

.field mOperator:Ljava/lang/String;

.field private mOperatorLogoIconView:Landroid/view/View;

.field final mPhone:Landroid/telephony/TelephonyManager;

.field mPhoneSignalIconId:I

.field mPhoneSignalIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mPhoneState:I

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreSvcSate:I

.field mQSDataTypeIconId:I

.field mQSPhoneSignalIconId:I

.field mQSWifiIconId:I

.field mRoamingIconId:I

.field mServiceState:Landroid/telephony/ServiceState;

.field private mShowAirPlane:Z

.field mShowAtLeastThreeGees:Z

.field mShowPhoneRSSIForData:Z

.field mSigStrengthId:I

.field mSignalClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;",
            ">;"
        }
    .end annotation
.end field

.field mSignalStrength:Landroid/telephony/SignalStrength;

.field mSignalsChangedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mTabletOperatorLogoIconView:Landroid/widget/ImageView;

.field private mTargetSignalStrength:I

.field private mTransitionState:Z

.field mWifiActivity:I

.field mWifiActivityIconId:I

.field mWifiCarrierIcon:[[I

.field mWifiChannel:Lcom/android/internal/util/AsyncChannel;

.field mWifiConnected:Z

.field mWifiEnabled:Z

.field mWifiIconId:I

.field mWifiIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mWifiLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mWifiLevel:I

.field final mWifiManager:Landroid/net/wifi/WifiManager;

.field mWifiRssi:I

.field mWifiSsid:Ljava/lang/String;

.field private mWimaxConnected:Z

.field private mWimaxExtraState:I

.field private mWimaxIconId:I

.field mWimaxIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mWimaxIdle:Z

.field private mWimaxSignal:I

.field private mWimaxState:I

.field private mWimaxSupported:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneState:I

    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    aget-object v5, v5, v8

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowPhoneRSSIForData:Z

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeATTstyle:Z

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeTMOstyle:Z

    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSigStrengthId:I

    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrDataTypeIconId:I

    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiIconId:I

    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    move-object v5, v6

    check-cast v5, [[I

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiCarrierIcon:[[I

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->ethernetManager:Ljava/lang/Object;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->ethernetManagerClass:Ljava/lang/Class;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->ethernetServiceMessengerMethod:Ljava/lang/reflect/Method;

    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetIconId:I

    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetActivityIconId:I

    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastEthernetIconId:I

    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastEthernetActivityIconId:I

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherDisconnected:Z

    const v5, 0x1080753

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherIconId:I

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastBluetoothTethered:Z

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSupported:Z

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIdle:Z

    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSignal:I

    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxState:I

    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxExtraState:I

    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnected:Z

    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastAirplaneMode:Z

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconViews:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconViews:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconViews:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetIconViews:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetActivityIconViews:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconViews:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedSignalIconViews:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconViews:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedLabelViews:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileLabelViews:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mATTMobileLabelViews:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLabelViews:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEmergencyLabelViews:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalClusters:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionIconId:I

    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWimaxIconId:I

    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedSignalIconId:I

    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    const-string v5, ""

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedLabel:Ljava/lang/String;

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataAndWifiStacked:Z

    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastRoamingIconId:I

    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataState:I

    const-string v5, "isValidPlmn"

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->EXTRA_IS_VALID_PLMN:Ljava/lang/String;

    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I

    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I

    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPreSvcSate:I

    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCurSvcSate:I

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTransitionState:Z

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMessageUpdateNotDone:Z

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAirPlane:Z

    new-instance v5, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;-><init>(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCB:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorLogoIconView:Landroid/view/View;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMoreIconView:Landroid/view/View;

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTabletOperatorLogoIconView:Landroid/widget/ImageView;

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataRoamingSetting:Z

    new-instance v5, Lcom/android/systemui/statusbar/policy/NetworkController$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/NetworkController$1;-><init>(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->LTE_ON_CDMA_UNKNOWN:I

    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->LTE_ON_CDMA_FALSE:I

    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->LTE_ON_CDMA_TRUE:I

    new-instance v5, Lcom/android/systemui/statusbar/policy/NetworkController$DataRoamingObserver;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/NetworkController$DataRoamingObserver;-><init>(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataRoamingObserver:Lcom/android/systemui/statusbar/policy/NetworkController$DataRoamingObserver;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    const v5, 0x7f0b0004

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowPhoneRSSIForData:Z

    const v5, 0x7f0b0005

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    const v5, 0x111003d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateStatusBarNetworkSettings()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWifiIcons()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWimaxIcons()V

    const-string v5, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v7, 0x1e1

    invoke-virtual {v5, v6, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    const-string v5, " "

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameSeparator:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v6, 0x10404a8

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mATTNetworkName:Ljava/lang/String;

    const-string v5, "wifi"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v2, Lcom/android/systemui/statusbar/policy/NetworkController$WifiHandler;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/NetworkController$WifiHandler;-><init>(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    new-instance v5, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v5}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v2, v4}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "com.sec.android.app.mms.SMS_CB_DIRECT_DISPLAY_RECEIVED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "com.sec.android.app.mms.CB_CLEAR"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110042

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSupported:Z

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSupported:Z

    if-eqz v5, :cond_1

    const-string v5, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "data_roaming"

    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataRoamingObserver:Lcom/android/systemui/statusbar/policy/NetworkController$DataRoamingObserver;

    invoke-virtual {v5, v6, v8, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateAirplaneMode()V

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateTelephonySignalStrength()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/policy/NetworkController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCurSvcSate:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/policy/NetworkController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCurSvcSate:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/NetworkController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/policy/NetworkController;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getCurrentRSSIState()I

    move-result v0

    return v0
.end method

.method static synthetic access$1202(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAirPlane:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/policy/NetworkController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTransitionState:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTransitionState:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/policy/NetworkController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/systemui/statusbar/policy/NetworkController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I

    return p1
.end method

.method static synthetic access$1408(Lcom/android/systemui/statusbar/policy/NetworkController;)I
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I

    return v0
.end method

.method static synthetic access$1410(Lcom/android/systemui/statusbar/policy/NetworkController;)I
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/policy/NetworkController;I)[I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->getPhoneSignalIconList(I)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/policy/NetworkController;II)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getDataSignalIconId(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/policy/NetworkController;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->getPhoneSignalDescriptionIconId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/policy/NetworkController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/systemui/statusbar/policy/NetworkController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/NetworkController;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getDataServiceState()I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/policy/NetworkController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherDisconnected:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherDisconnected:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/policy/NetworkController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->displaySignalStrength(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/policy/NetworkController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataRoamingSetting:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataRoamingSetting:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateRomaingNotification()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshOperatorLogoView()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getUpdateDataNetType()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataIcon()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/NetworkController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/NetworkController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdmaLTE()Z

    move-result v0

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMessageUpdateNotDone:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/NetworkController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPreSvcSate:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/policy/NetworkController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPreSvcSate:I

    return p1
.end method

.method private changeDataNetType()V
    .locals 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v3, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v6, "isDataSignalMarginal"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_0
    if-eqz v2, :cond_2

    move v3, v4

    :goto_0
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSigStrengthId:I

    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changeDataNetType   isDataSignalMarginal ::"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrDataTypeIconId:I

    const v4, 0x7f0200cd

    if-ne v3, v4, :cond_5

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSigStrengthId:I

    if-nez v3, :cond_4

    const v3, 0x7f0200fd

    :goto_2
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_LGT:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSigStrengthId:I

    mul-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    add-int/2addr v4, v5

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeDataNetType   [3G] mSigStrengthId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSigStrengthId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_3
    return-void

    :cond_2
    move v3, v5

    goto :goto_0

    :catch_0
    move-exception v0

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSigStrengthId:I

    const-string v3, "StatusBar.NetworkController"

    const-string v4, "changeDataNetType   NoSuchMethodException"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v3, "StatusBar.NetworkController"

    const-string v4, "changeDataNetType   IllegalAccessException"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v3, "StatusBar.NetworkController"

    const-string v4, "changeDataNetType   InvocationTargetException"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSigStrengthId:I

    const-string v3, "StatusBar.NetworkController"

    const-string v4, "changeDataNetType   mSignalStrength is null "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const v3, 0x7f0200fb

    goto :goto_2

    :cond_5
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrDataTypeIconId:I

    const v4, 0x7f0200d0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getLteImage()I

    move-result v4

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSigStrengthId:I

    if-nez v3, :cond_6

    const v3, 0x7f0200fe

    :goto_4
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LGT:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSigStrengthId:I

    mul-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    add-int/2addr v4, v5

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeDataNetType   [4G] mSigStrengthId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSigStrengthId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    const v3, 0x7f0200fc

    goto :goto_4
.end method

.method private checkCarrierWifiIcon()V
    .locals 6

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCarrierWifiIcon: getSSID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "getNetworkId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->isLGTWifi(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->getLGTWifiIcon(I)[[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiCarrierIcon:[[I

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x0

    check-cast v3, [[I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiCarrierIcon:[[I

    goto :goto_0
.end method

.method private final displaySignalStrength(I)V
    .locals 6

    const v5, 0x7f0200e3

    const/4 v0, -0x1

    move v0, p1

    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdmaLTE()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "STATUSBAR-NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displaySignalStrength : !isCdma(), signalStrength :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxLevelOfSignalStrengthIndicator:I

    if-le v0, v2, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxLevelOfSignalStrengthIndicator:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_1

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    :cond_1
    :goto_1
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getPhoneSignalIconList(I)[I

    move-result-object v1

    aget v2, v1, v0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getPhoneSignalDescriptionIconId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getDataSignalIconId(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    return-void

    :cond_2
    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    goto :goto_0

    :cond_3
    const-string v2, "STATUSBAR-NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displaySignalStrength : isCdma(), signalStrength :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxLevelOfSignalStrengthIndicator:I

    if-le v0, v2, :cond_5

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxLevelOfSignalStrengthIndicator:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdmaEri()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getCdmaEriIcon()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    const-string v2, "STATUSBAR-NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCdmaEri(), mRoamingIconId = getCdmaEriIcon() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    if-gez v0, :cond_4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_1

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    const-string v2, "STATUSBAR-NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPhone.isNetworkRoaming(), mRoamingIconId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private displayingRoamingIMSI(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x3

    new-array v5, v8, [Ljava/lang/String;

    const-string v8, "ril.simtype"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    const/4 v2, 0x0

    :try_start_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "getSponImsi"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v2, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    move-object v0, v8

    check-cast v0, [Ljava/lang/String;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    :cond_0
    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    if-eqz v8, :cond_2

    const-string v6, ""

    move-object v7, v6

    :goto_0
    return-object v7

    :catch_0
    move-exception v1

    const-string v8, "CarrierLabel"

    const-string v9, "getSponImsi   NoSuchMethodException"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v8, "CarrierLabel"

    const-string v9, "getSponImsi   IllegalArgumentException"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v8, "CarrierLabel"

    const-string v9, "getSponImsi   IllegalAccessException"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    goto :goto_0

    :catch_3
    move-exception v1

    const-string v8, "CarrierLabel"

    const-string v9, "getSponImsi   InvocationTargetException"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    goto :goto_0

    :cond_2
    const-string v8, "3"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "18"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v6, ""

    move-object v7, v6

    goto :goto_0

    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v6, ""

    move-object v7, v6

    goto :goto_0

    :cond_4
    if-eqz v5, :cond_5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "450"

    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v6, "(H)"

    :cond_5
    :goto_1
    const-string v8, "CarrierLabel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "displayingRoamingIMSI srtingIMSI = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    goto :goto_0

    :cond_6
    const/4 v8, 0x0

    aget-object v8, v5, v8

    if-eqz v8, :cond_7

    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    const/4 v8, 0x0

    const/4 v9, 0x5

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v9, v5, v9

    const/4 v10, 0x0

    const/4 v11, 0x5

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v6, "(S1)"

    goto :goto_1

    :cond_7
    const/4 v8, 0x1

    aget-object v8, v5, v8

    if-eqz v8, :cond_8

    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    const/4 v8, 0x0

    const/4 v9, 0x5

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v5, v9

    const/4 v10, 0x0

    const/4 v11, 0x5

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v6, "(S2)"

    goto :goto_1

    :cond_8
    const/4 v8, 0x2

    aget-object v8, v5, v8

    if-eqz v8, :cond_9

    const/4 v8, 0x2

    aget-object v8, v5, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    const/4 v8, 0x0

    const/4 v9, 0x5

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v9, v5, v9

    const/4 v10, 0x0

    const/4 v11, 0x5

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v6, "(S3)"

    goto/16 :goto_1

    :cond_9
    const-string v8, "CarrierLabel"

    const-string v9, "displayingRoamingIMSI - nothing shows!"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, ""

    goto/16 :goto_1
.end method

.method private displayingRoamingNetType()Ljava/lang/String;
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x0

    const-string v5, "ril.simtype"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    if-eqz v5, :cond_0

    const-string v3, ""

    move-object v4, v3

    :goto_0
    return-object v4

    :cond_0
    const-string v5, "3"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "18"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v3, ""

    move-object v4, v3

    goto :goto_0

    :cond_1
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    const-string v3, ""

    :goto_1
    const-string v5, "CarrierLabel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "displayingRoamingNetType srtingNetType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mDataNetType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    goto :goto_0

    :pswitch_1
    const-string v3, "[G]"

    goto :goto_1

    :pswitch_2
    const-string v3, "[W]"

    goto :goto_1

    :pswitch_3
    const-string v5, "gsm.network.type"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v5, v0

    if-lt v5, v8, :cond_2

    const-string v5, "GSM"

    aget-object v6, v0, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v3, "[G]"

    goto :goto_1

    :cond_2
    array-length v5, v0

    if-lt v5, v8, :cond_3

    const-string v5, "UMTS"

    aget-object v6, v0, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v3, "[W]"

    goto :goto_1

    :cond_3
    const-string v3, ""

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private final getCdmaEriIcon()I
    .locals 8

    const v3, 0x7f0200d7

    const/4 v7, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v1

    const-string v4, "StatusBar.NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCdmaEriIcon: iconIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " iconMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/systemui/statusbar/policy/NetworkController$2;->$SwitchMap$com$android$systemui$statusbar$policy$NetworkController$Operator:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperator:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    if-ne v0, v7, :cond_1

    :cond_0
    :goto_0
    return v2

    :pswitch_1
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->getVZWEriIcon(II)I

    move-result v2

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->getLGTEriIcon(II)I

    move-result v2

    goto :goto_0

    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    if-nez v4, :cond_0

    packed-switch v1, :pswitch_data_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdmaLTE()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v4

    if-eq v4, v7, :cond_0

    const-string v2, "STATUSBAR-NetworkController"

    const-string v4, "getCdmaEriIcon() mDeviceType == 1"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto :goto_0

    :pswitch_3
    move v2, v3

    goto :goto_0

    :pswitch_4
    const v2, 0x7f020110

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getCurrentRSSIState()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private getDataConnectionDescriptionIconId(I)I
    .locals 2

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxLevelOfSignalStrengthIndicator:I

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_CONNECTION_STRENGTH:[I

    aget v0, v1, p1

    :goto_0
    return v0

    :pswitch_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_CONNECTION_STRENGTH:[I

    aget v0, v1, p1

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_5_LEVEL_CONNECTION_STRENGTH:[I

    aget v0, v1, p1

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_6_LEVEL_CONNECTION_STRENGTH:[I

    aget v0, v1, p1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getDataServiceState()I
    .locals 7

    const/4 v0, 0x1

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getDataState"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    const-string v4, "StatusBar.NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDataServiceState : dataServiceState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move v1, v0

    :goto_0
    return v1

    :catch_0
    move-exception v2

    const-string v4, "StatusBar.NetworkController"

    const-string v5, "getDataServiceState : NoSuchMethodException"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v4, "StatusBar.NetworkController"

    const-string v5, "getDataServiceState : IllegalAccessException"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    goto :goto_0

    :catch_2
    move-exception v2

    const-string v4, "StatusBar.NetworkController"

    const-string v5, "getDataServiceState : InvocationTargetException"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    goto :goto_0
.end method

.method private getDataSignalIconId(II)I
    .locals 2

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxLevelOfSignalStrengthIndicator:I

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, p1

    aget v0, v1, p2

    :goto_0
    return v0

    :pswitch_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, p1

    aget v0, v1, p2

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_5_LEVEL_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, p1

    aget v0, v1, p2

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_6_LEVEL_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, p1

    aget v0, v1, p2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final getLGTEriIcon(II)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdmaEri()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0200e3

    goto :goto_0
.end method

.method private getLGTWifiIcon(I)[[I
    .locals 6

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v3, p1, :cond_0

    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLGTWifiIcon: networkId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "eap = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " phase2 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "AKA"

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "PEAP"

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "auth=MSCHAPV2"

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    sget-object v3, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_LGT:[[I

    :goto_0
    return-object v3

    :cond_2
    const/4 v3, 0x0

    check-cast v3, [[I

    goto :goto_0
.end method

.method private getPhoneSignalDescriptionIconId(I)I
    .locals 2

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxLevelOfSignalStrengthIndicator:I

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v0, v1, p1

    :goto_0
    return v0

    :pswitch_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v0, v1, p1

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_5_LEVEL_SIGNAL_STRENGTH:[I

    aget v0, v1, p1

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_6_LEVEL_SIGNAL_STRENGTH:[I

    aget v0, v1, p1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getPhoneSignalIconList(I)[I
    .locals 2

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxLevelOfSignalStrengthIndicator:I

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    aget-object v0, v1, p1

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    aget-object v0, v1, p1

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_5_LEVEL_SIGNAL_STRENGTH:[[I

    aget-object v0, v1, p1

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_6_LEVEL_SIGNAL_STRENGTH:[[I

    aget-object v0, v1, p1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getResourceName(I)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const-string v2, "(unknown)"

    goto :goto_0

    :cond_0
    const-string v2, "(null)"

    goto :goto_0
.end method

.method private final getRoamingIcon()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v0, :cond_2

    :cond_1
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "NoService, mRoamingIconId = 0"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdmaLTE()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdmaEri()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getCdmaEriIcon()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    const-string v0, "STATUSBAR-NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCdma(), isCdmaEri(), mRoamingIconId = getCdmaEriIcon() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getCdmaEriIcon()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "isCdma(), !isCdmaEri(), mRoamingIconId = 0"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mRoamingIconDisplay:Z

    if-eqz v0, :cond_6

    const v0, 0x7f0200e3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    const v0, 0x7f02005f

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    const-string v0, "STATUSBAR-NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPhone.isNetworkRoaming(), mDeviceType != 1, mRoamingIconId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "Nothing, mRoamingIconId = 0"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getUpdateDataNetType()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "ORANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateORGDataNetType()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "OYB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateOYBDataNetType()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "OYA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateOYADataNetType()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "OYC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateOYCDataNetType()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "OLB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateOLBDataNetType()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "VD2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateVD2DataNetType()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "VID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateVIDDataNetType()V

    goto :goto_0

    :cond_6
    const-string v0, "DOR"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDORDataNetType()V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "TMH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateTMHDataNetType()V

    goto :goto_0

    :cond_8
    const-string v0, "PCT"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updatePCTDataNetType()V

    goto :goto_0

    :cond_9
    const-string v0, "JDI"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateJDIDataNetType()V

    goto/16 :goto_0

    :cond_a
    const-string v0, "SFR"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateSFRDataNetType()V

    goto/16 :goto_0

    :cond_b
    const-string v0, "TFG"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateTFGDataNetType()V

    goto/16 :goto_0

    :cond_c
    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$2;->$SwitchMap$com$android$systemui$statusbar$policy$NetworkController$Operator:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperator:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    goto/16 :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    goto/16 :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    goto/16 :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    goto/16 :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    goto/16 :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    goto/16 :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    goto/16 :goto_0

    :pswitch_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    goto/16 :goto_0

    :pswitch_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private final getVZWEriIcon(II)I
    .locals 2

    const v0, 0x7f0200d7

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    :pswitch_2
    const v0, 0x7f020110

    goto :goto_0

    :pswitch_3
    if-nez p2, :cond_2

    const v0, 0x7f0200d9

    goto :goto_0

    :cond_2
    if-ne p2, v1, :cond_0

    const v0, 0x7f020111

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private hasService()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x1

    :cond_0
    :pswitch_1
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    :goto_0
    return-object v3

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    if-ne v4, v5, :cond_1

    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isCdma()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCdmaLTE()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->LTE_ON_CDMA_TRUE:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLGTWifi(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "U+zone"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "U+ACN"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "U+zone"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "U+ACN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLgtRoamingIMSIEnabled()Ljava/lang/Boolean;
    .locals 3

    const-string v1, "ril.currentplmn"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "domestic"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method private refreshOperatorLogoView()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "ORANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowOperatorLogoIcon:Z

    if-eqz v0, :cond_0

    const-string v0, "StatusBar.NetworkController"

    const-string v1, "showOperatorLogoIcon !!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorLogoIconView:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getCurrentRSSIState()I

    move-result v0

    if-eq v0, v5, :cond_1

    const-string v0, "StatusBar.NetworkController"

    const-string v1, "refreshOperatorLogoView NOT  IN_SVC_STATE"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorLogoIconView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->setIsNetworkAvailable(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSIMandOperatorMatched()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMoreIconView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMoreIconView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eq v0, v5, :cond_2

    const-string v0, "StatusBar.NetworkController"

    const-string v1, "SIMandOperatorMatched && mMoreIconView is gone "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorLogoIconView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->setIsNetworkAvailable(Z)V

    goto :goto_0

    :cond_2
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "!SIMandOperatorMatched || mMoreIconView is visible "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorLogoIconView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->setIsNetworkAvailable(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTabletOperatorLogoIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getCurrentRSSIState()I

    move-result v0

    if-eq v0, v5, :cond_4

    const-string v0, "StatusBar.NetworkController"

    const-string v1, "refreshOperatorLogoView NOT  IN_SVC_STATE"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTabletOperatorLogoIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->setIsNetworkAvailable(Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v5, :cond_5

    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSIMandOperatorMatched()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "StatusBar.NetworkController"

    const-string v1, "showOperatorLogoIcon :: SIMandOperatorMatched !!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTabletOperatorLogoIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->setIsNetworkAvailable(Z)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "showOperatorLogoIcon :: PORTRAIT or SIMandOperatorMismatched !!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTabletOperatorLogoIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->setIsNetworkAvailable(Z)V

    goto/16 :goto_0

    :cond_6
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowOperatorLogoIcon:Z

    if-eqz v0, :cond_0

    const-string v0, "StatusBar.NetworkController"

    const-string v1, "showOperatorLogoIcon !!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorLogoIconView:Landroid/view/View;

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getCurrentRSSIState()I

    move-result v0

    if-eq v0, v5, :cond_7

    const-string v0, "StatusBar.NetworkController"

    const-string v1, "refreshOperatorLogoView NOT  IN_SVC_STATE"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorLogoIconView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->setIsNetworkAvailable(Z)V

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSIMandOperatorMatched()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMoreIconView:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMoreIconView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_8

    const-string v0, "StatusBar.NetworkController"

    const-string v1, "SIMandOperatorMatched && mMoreIconView is gone "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorLogoIconView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->setIsNetworkAvailable(Z)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "!SIMandOperatorMatched || mMoreIconView is visible "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorLogoIconView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->setIsNetworkAvailable(Z)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTabletOperatorLogoIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getCurrentRSSIState()I

    move-result v0

    if-eq v0, v5, :cond_a

    const-string v0, "StatusBar.NetworkController"

    const-string v1, "refreshOperatorLogoView NOT  IN_SVC_STATE"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTabletOperatorLogoIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->setIsNetworkAvailable(Z)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v5, :cond_b

    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSIMandOperatorMatched()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "StatusBar.NetworkController"

    const-string v1, "showOperatorLogoIcon :: SIMandOperatorMatched !!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTabletOperatorLogoIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->setIsNetworkAvailable(Z)V

    goto/16 :goto_0

    :cond_b
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "showOperatorLogoIcon :: PORTRAIT or SIMandOperatorMismatched !!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTabletOperatorLogoIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->setIsNetworkAvailable(Z)V

    goto/16 :goto_0
.end method

.method private setLastNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastShowSpn:Z

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSpn:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastShowPlmn:Z

    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPlmn:Ljava/lang/String;

    return-void
.end method

.method private final updateATTDataNetType()V
    .locals 5

    const v4, 0x7f0c00c8

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeATTstyle:Z

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getRoamingIcon()V

    return-void

    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200dc

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_ATT:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200d1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeATTstyle:Z

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_ATT:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200e1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeATTstyle:Z

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200dd

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private updateAirplaneMode()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshOperatorLogoView()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private final updateCMCCDataNetType()V
    .locals 7

    const v6, 0x7f020050

    const/4 v5, 0x0

    const v4, 0x7f0c00cb

    const v3, 0x7f020053

    const v2, 0x7f0200cd

    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "updateDataNetType()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200d0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getLteImage()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    const v0, 0x7f020055

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getRoamingIcon()V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200dd

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    const v0, 0x7f02005c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00c8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00c8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    :cond_1
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200dc

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    const v0, 0x7f020056

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    :cond_2
    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200df

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_5

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200cb

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    :pswitch_7
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_6

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200cb

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    :pswitch_8
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_9
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200d0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getLteImage()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    const v0, 0x7f020055

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private updateConnectivity(Landroid/content/Intent;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnected:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnected:Z

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkTypeName:Ljava/lang/String;

    :goto_1
    const-string v3, "inetCondition"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v6, 0x7

    if-ne v3, v6, :cond_4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    if-nez v3, :cond_0

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherDisconnected:Z

    :cond_0
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getUpdateDataNetType()V

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mShowCarrierWifiIcon:Z

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->checkCarrierWifiIcon()V

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWimaxIcons()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataIcon()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateTelephonySignalStrength()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWifiIcons()V

    return-void

    :cond_2
    move v3, v5

    goto :goto_0

    :cond_3
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkTypeName:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    if-eqz v3, :cond_5

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherDisconnected:Z

    :cond_5
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    goto :goto_2
.end method

.method private final updateDORDataNetType()V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200d0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getLteImage()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private final updateDataIcon()V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdmaLTE()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v4

    if-ne v4, v8, :cond_7

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v4, v5, :cond_5

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-ne v4, v6, :cond_4

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    packed-switch v4, :pswitch_data_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v4, v7

    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    :goto_1
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mDataIconForCHN:Z

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-eq v4, v9, :cond_1

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    if-eq v4, v6, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v4, v7

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    const/4 v3, 0x1

    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateNoSIMNotification()V

    :cond_3
    :goto_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v5

    invoke-interface {v4, v5, v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneDataConnectionState(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_4
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    return-void

    :pswitch_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v4, v8

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v4, v6

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v4, v9

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    const v0, 0x7f02010a

    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mUseVzwSimIcon:Z

    if-eqz v4, :cond_6

    const v0, 0x7f02010c

    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    :cond_7
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-ne v4, v6, :cond_8

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    packed-switch v4, :pswitch_data_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v4, v7

    :goto_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdmaLTE()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "STATUSBAR-NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " isCdmaLTE - mSimState"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateNoSIMNotification()V

    goto :goto_3

    :pswitch_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v4, v8

    goto :goto_5

    :pswitch_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v4, v6

    goto :goto_5

    :pswitch_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v4, v9

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    const/4 v3, 0x0

    goto :goto_5

    :catch_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private final updateDataNetType()V
    .locals 7

    const v6, 0x7f020050

    const/4 v5, 0x0

    const v4, 0x7f020053

    const v3, 0x7f0c00cb

    const v2, 0x7f0200cd

    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "updateDataNetType()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200d0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getLteImage()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    const v0, 0x7f020055

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getRoamingIcon()V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_8

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200dd

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    const v0, 0x7f02005c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00c8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00c8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    :cond_1
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200dc

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    const v0, 0x7f020056

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    :cond_2
    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200de

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    const v0, 0x7f02005d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200df

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_5

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200cb

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    :pswitch_7
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_6

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200cb

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    :pswitch_8
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_9
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const-string v0, "PLS"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200e0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    :goto_1
    const v0, 0x7f020055

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200d0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getLteImage()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    goto :goto_1

    :cond_8
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private updateEthernetState(Landroid/content/Intent;)V
    .locals 4

    sget-object v1, Lcom/android/systemui/statusbar/policy/NetworkController;->EXTRA_ETH_STATE:Ljava/lang/String;

    sget v2, Lcom/android/systemui/statusbar/policy/NetworkController;->ETH_STATE_UNKNOWN:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "StatusBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateEthernetState ETH_STATE_CHANGED_ACTION new state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionEthernet:Ljava/lang/String;

    return-void
.end method

.method private final updateJDIDataNetType()V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LTE_LTN:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200d3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private final updateJPNDataNetType()V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "updateJPNDataNetType()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    const v1, 0x7f0200d0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getLteImage()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200e0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private final updateLGTDataNetType()V
    .locals 7

    const v6, 0x7f020055

    const/4 v5, 0x0

    const v4, 0x7f020053

    const v3, 0x7f0c00cb

    const v2, 0x7f0200cd

    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "updateLGTDataNetType()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200d0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getLteImage()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getRoamingIcon()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastShowSpn:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSpn:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastShowPlmn:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPlmn:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_6

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200dd

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    const v0, 0x7f02005c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00c8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00c8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    :cond_1
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200dc

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    const v0, 0x7f020056

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    :cond_2
    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200de

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    const v0, 0x7f02005d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200df

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_5

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200cb

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    const v0, 0x7f020050

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    :pswitch_7
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_8
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200d0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getLteImage()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private updateNoSIMNotification()V
    .locals 8

    const/16 v7, 0x111

    const-string v4, "ro.config.donot_nosim"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "StatusBar.NetworkController"

    const-string v5, "do not show no sim notifiation"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    invoke-virtual {v4, v7}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0c015b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0c015c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const v5, 0x7f02010a

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mUseVzwSimIcon:Z

    if-eqz v4, :cond_2

    const v4, 0x7f02010c

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private final updateOLBDataNetType()V
    .locals 5

    const v4, 0x7f0c00cc

    const v3, 0x7f0200df

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOLBDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200cd

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0
.end method

.method private final updateORGDataNetType()V
    .locals 7

    const v6, 0x7f0c00cb

    const v5, 0x7f0200df

    const v4, 0x7f0200cd

    const v3, 0x7f0c00cc

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateORGDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    :cond_0
    const-string v0, "TMU"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TMP"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200de

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    :cond_2
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_4

    const-string v0, "TMU"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "TMP"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    :cond_4
    :goto_1
    return-void

    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200ce

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_1

    :cond_8
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_1
.end method

.method private final updateOYADataNetType()V
    .locals 8

    const v7, 0x7f0c00cd

    const v6, 0x7f0200d0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getLteImage()I

    move-result v6

    const/4 v5, 0x0

    const v4, 0x7f0c00cb

    const v3, 0x7f0200cd

    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOYADataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00c8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200dc

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    const v0, 0x7f020056

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    :cond_3
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    :cond_4
    :goto_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200e0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    :cond_5
    return-void

    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    :cond_8
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_1

    :cond_9
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_1
.end method

.method private final updateOYBDataNetType()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOYBDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00c8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200dc

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    const v0, 0x7f020056

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200d0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getLteImage()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    const v0, 0x7f020055

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    :cond_3
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200e0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    :cond_4
    return-void

    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200cd

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    const v0, 0x7f020053

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0
.end method

.method private final updateOYCDataNetType()V
    .locals 4

    const v3, 0x7f0c00cc

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOYCDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200df

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    :cond_3
    :goto_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200e0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200de

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_1
.end method

.method private final updatePCTDataNetType()V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_2

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200d0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getLteImage()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LTE_LTN:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200d3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0
.end method

.method private updateRomaingNotification()V
    .locals 9

    const/16 v8, 0x222

    const/4 v5, 0x1

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    const v6, 0x7f0200d9

    if-ne v4, v6, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    invoke-virtual {v4, v8}, Landroid/app/NotificationManager;->cancel(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0c0195

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "data_roaming"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_2

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataRoamingSetting:Z

    const-string v4, "STATUSBAR-NetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateRomaingNotification DataRoaming:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataRoamingSetting:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataRoamingSetting:Z

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v4

    if-nez v4, :cond_3

    const v4, 0x7f0c0197

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const v6, 0x7f0200a9

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    const v4, 0x7f0c0196

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    const v4, 0x7f0c0198

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method private final updateSFRDataNetType()V
    .locals 6

    const v5, 0x7f0c00cb

    const v4, 0x7f0200ce

    const v3, 0x7f0200cd

    const v2, 0x7f0c00cc

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    sparse-switch v0, :sswitch_data_0

    :cond_1
    :goto_0
    return-void

    :sswitch_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_2G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200cc

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    :cond_2
    :sswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DC:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200db

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    const v0, 0x7f020053

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x8 -> :sswitch_2
        0x9 -> :sswitch_2
        0xa -> :sswitch_2
        0xf -> :sswitch_3
        0x1e -> :sswitch_1
    .end sparse-switch
.end method

.method private final updateSPRDataNetType()V
    .locals 7

    const v6, 0x7f0c00cc

    const v5, 0x7f0c00c8

    const v4, 0x7f0200d0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getLteImage()I

    move-result v4

    const v3, 0x7f0c00cb

    const v2, 0x7f0200cd

    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "updateDataNetType()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getRoamingIcon()V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200dd

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200dc

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200de

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200df

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_6
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_7
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private final updateSimState(Landroid/content/Intent;)V
    .locals 6

    const-string v4, "ss"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ABSENT"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "reason"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "PERM_DISABLED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v4, "STATUSBAR-NetworkController"

    const-string v5, "updateSimState:PERM_DISABLE"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshOperatorLogoView()V

    return-void

    :cond_0
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v4, "STATUSBAR-NetworkController"

    const-string v5, "updateSimState:ABSENT"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v4, "READY"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v4, "STATUSBAR-NetworkController"

    const-string v5, "updateSimState:READY"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v4, "LOCKED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "reason"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "PIN"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v4, "STATUSBAR-NetworkController"

    const-string v5, "updateSimState:PIN_REQUIRED"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v4, "PUK"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v4, "STATUSBAR-NetworkController"

    const-string v5, "updateSimState:PUK_REQUIRED"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    :try_start_0
    const-class v4, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v5, "NETWORK_LOCKED"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/IccCardConstants$State;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    const-class v4, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v5, "PERSO_LOCKED"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/IccCardConstants$State;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    const-string v4, "STATUSBAR-NetworkController"

    const-string v5, "updateSimState:NETWORK_LOCKED"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "StatusBar.NetworkController"

    const-string v5, "updateSimState: NETWORK_LOCKED is not a constant in State"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v4, "StatusBar.NetworkController"

    const-string v5, "updateSimState: PERSO_LOCKED is not a constant in State"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v4, "STATUSBAR-NetworkController"

    const-string v5, "updateSimState:UNKNOWN"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private updateStatusBarNetworkSettings()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getMaxLevelOfSignalStrengthIndicator()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxLevelOfSignalStrengthIndicator:I

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperator:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_ReplaceDataTypeIconAsOpBrand"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    return-void
.end method

.method private final updateTFGDataNetType()V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    const-string v0, "704"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "706"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200d0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getLteImage()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private final updateTMHDataNetType()V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200e0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private final updateTMODataNetType()V
    .locals 6

    const v5, 0x7f0c00cb

    const v4, 0x7f0c00c8

    const v3, 0x7f0200cf

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeTMOstyle:Z

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getRoamingIcon()V

    return-void

    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200dc

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeTMOstyle:Z

    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataNet R -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_TMO:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200d5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_TMO:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_4
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeTMOstyle:Z

    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataNet R -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_TMO:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200e2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_TMO:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200dd

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private final updateTelephonySignalStrength()V
    .locals 7

    const/4 v6, 0x0

    const v5, 0x7f02021e

    const v4, 0x7f020128

    const v3, 0x7f02005e

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseKorRSSIAlgorithm:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v2, :cond_2

    const-string v2, "STATUSBAR-NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTelephonySignalStrength -mTransitionState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTransitionState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTransitionState:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMessageUpdateNotDone:Z

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getGsmSignalBar()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I

    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMessageUpdateNotDone:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x46

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    if-eqz v2, :cond_4

    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->supportVoice:Z

    if-eqz v2, :cond_3

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto :goto_0

    :cond_3
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v2, :cond_7

    :cond_5
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->supportVoice:Z

    if-eqz v2, :cond_6

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto :goto_0

    :cond_6
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v3, v3, v6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    :goto_1
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxLevelOfSignalStrengthIndicator:I

    if-le v0, v2, :cond_a

    const-string v2, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTelephonySignalStrength: iconLevel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is too high"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxLevelOfSignalStrengthIndicator:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    :cond_8
    :goto_2
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getPhoneSignalIconList(I)[I

    move-result-object v1

    aget v2, v1, v0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxLevelOfSignalStrengthIndicator:I

    const/4 v3, 0x4

    if-le v2, v3, :cond_b

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    :goto_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getPhoneSignalDescriptionIconId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getDataSignalIconId(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    goto :goto_1

    :cond_a
    if-gez v0, :cond_8

    const-string v2, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTelephonySignalStrength: iconLevel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is too small"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    goto :goto_2

    :cond_b
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v2, v2, v3

    aget v2, v2, v0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    goto :goto_3
.end method

.method private final updateVD2DataNetType()V
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVD2DataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200e0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private final updateVIDDataNetType()V
    .locals 7

    const v6, 0x7f0c00cd

    const v5, 0x7f0c00cb

    const v4, 0x7f0200d0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getLteImage()I

    move-result v4

    const v3, 0x7f0200cd

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVIDDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302500"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302320"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302510"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302490"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302500"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302320"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302510"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302490"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    :cond_4
    :goto_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302500"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302320"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302510"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302490"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    :cond_6
    :goto_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_7

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200e0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    :cond_7
    return-void

    :cond_8
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    :cond_a
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_2
.end method

.method private final updateVZWDataNetType()V
    .locals 7

    const v6, 0x7f0c00cc

    const v5, 0x7f0c00c8

    const v4, 0x7f0200cb

    const v3, 0x7f0c00cb

    const v2, 0x7f0200cd

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_6

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200dd

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getRoamingIcon()V

    return-void

    :pswitch_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200dc

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    :cond_1
    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200de

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200df

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    :pswitch_7
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_5

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00cf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    :pswitch_8
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_9
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const v0, 0x7f0200d2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private updateWifiIcons()V
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mHideWifiInAndOut:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_HIDEINANDOUT:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowCarrierWifiIcon:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiCarrierIcon:[[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiCarrierIcon:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataAndWifiStacked:Z

    if-eqz v0, :cond_3

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiIconId:I

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00b2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    if-eqz v0, :cond_5

    const v0, 0x7f020142

    :goto_2
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    if-eqz v0, :cond_4

    const v1, 0x7f020069

    :cond_4
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiIconId:I

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method private updateWifiState(Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "wifi_state"

    const/4 v7, 0x4

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWifiIcons()V

    return-void

    :cond_1
    move v4, v5

    goto :goto_0

    :cond_2
    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "networkInfo"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_5

    :goto_2
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v4, :cond_7

    if-nez v3, :cond_7

    const-string v4, "wifiInfo"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiInfo;

    if-nez v1, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_6

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    :cond_4
    :goto_3
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mShowCarrierWifiIcon:Z

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->checkCarrierWifiIcon()V

    goto :goto_1

    :cond_5
    move v4, v5

    goto :goto_2

    :cond_6
    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    goto :goto_3

    :cond_7
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-nez v4, :cond_4

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    goto :goto_3

    :cond_8
    const-string v4, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "newRssi"

    const/16 v5, -0xc8

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiRssi:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiRssi:I

    sget v5, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    invoke-static {v4, v5}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    goto :goto_1
.end method

.method private updateWimaxIcons()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIdle:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_IDLE:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIMAX_CONNECTION_STRENGTH:[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSignal:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWimax:Ljava/lang/String;

    :goto_1
    return-void

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_SIGNAL_STRENGTH:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSignal:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_DISCONNECTED:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00b7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWimax:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    goto :goto_1
.end method

.method private final updateWimaxState(Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    const-string v5, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "4g_state"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_1

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getUpdateDataNetType()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWimaxIcons()V

    return-void

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    const-string v5, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v3, "newSignalLevel"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSignal:I

    goto :goto_1

    :cond_3
    const-string v5, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "WimaxState"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxState:I

    const-string v5, "WimaxStateDetail"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxExtraState:I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxState:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_4

    move v5, v3

    :goto_2
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxExtraState:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_5

    :goto_3
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIdle:Z

    goto :goto_1

    :cond_4
    move v5, v4

    goto :goto_2

    :cond_5
    move v3, v4

    goto :goto_3
.end method


# virtual methods
.method public addATTMobileLabelView(Landroid/widget/TextView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mATTMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addCombinedLabelView(Landroid/widget/TextView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addCombinedSignalIconView(Landroid/widget/ImageView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedSignalIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addDataDirectionIconView(Landroid/widget/ImageView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addDataDirectionOverlayIconView(Landroid/widget/ImageView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addDataTypeIconView(Landroid/widget/ImageView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addEmergencyLabelView(Landroid/widget/TextView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEmergencyLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addEthernetActivityIconView(Landroid/widget/ImageView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetActivityIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addEthernetIconView(Landroid/widget/ImageView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addMobileLabelView(Landroid/widget/TextView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addMoreIconView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMoreIconView:Landroid/view/View;

    return-void
.end method

.method public addNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    return-void
.end method

.method public addOperatorLogoIconView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorLogoIconView:Landroid/view/View;

    return-void
.end method

.method public addOperatorLogoIconViewForTablet(Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTabletOperatorLogoIconView:Landroid/widget/ImageView;

    return-void
.end method

.method public addPhoneSignalIconView(Landroid/widget/ImageView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V

    return-void
.end method

.method public addWifiIconView(Landroid/widget/ImageView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addWifiLabelView(Landroid/widget/TextView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addWimaxIconView(Landroid/widget/ImageView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "NetworkController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  %s network type %d (%s)"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnected:Z

    if-eqz v0, :cond_1

    const-string v0, "CONNECTED"

    :goto_0
    aput-object v0, v2, v3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkTypeName:Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  - telephony ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  hasService()="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mHspaDataDistinguishable="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mDataConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mSimState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mPhoneState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mDataState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mDataActivity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mDataNetType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mServiceState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mSignalStrength="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mLastSignalLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mNetworkName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mNetworkNameDefault="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mNetworkNameSeparator="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameSeparator:Ljava/lang/String;

    const-string v1, "\n"

    const-string v2, "\\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mQSPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mDataDirectionIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mDataSignalIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mDataTypeIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mQSDataTypeIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mRoamingIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  - wifi ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mWifiEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mWifiConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mWifiRssi="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiRssi:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mWifiLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mWifiSsid="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mWifiIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mQSWifiIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiIconId:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mWifiActivity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSupported:Z

    if-eqz v0, :cond_0

    const-string v0, "  - wimax ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mIsWimaxEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mWimaxConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mWimaxIdle="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIdle:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mWimaxIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mWimaxSignal=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSignal:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mWimaxState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mWimaxExtraState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxExtraState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    const-string v0, "  - Bluetooth ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mBtReverseTethered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  - connectivity ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mInetCondition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  - icons ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mLastPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mLastDataDirectionIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mLastDataDirectionOverlayIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mLastWifiIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mLastCombinedSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedSignalIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mLastDataTypeIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mLastCombinedLabel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedLabel:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "DISCONNECTED"

    goto/16 :goto_0
.end method

.method getLteImage()I
    .locals 3

    const/4 v2, 0x5

    :try_start_0
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sget v2, Lcom/android/systemui/statusbar/MinitSettings;->mLTEImage:I

    aget v2, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    const v2, 0x7f0200d0

    goto :goto_0

    :array_0
    .array-data 0x4
        0xd0t 0x0t 0x2t 0x7ft
        0xd1t 0x0t 0x2t 0x7ft
        0xd2t 0x0t 0x2t 0x7ft
        0xe0t 0x0t 0x2t 0x7ft
        0xe1t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public hasMobileDataFeature()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    return v0
.end method

.method isCdmaEri()Z
    .locals 4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    if-nez v3, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    if-eq v0, v2, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_2

    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isEmergencyOnly()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V
    .locals 10

    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-nez v0, :cond_1

    :cond_0
    move v8, v9

    :goto_0
    if-eqz v8, :cond_2

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    :goto_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiIconId:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    invoke-interface {p1, v8, v0, v2, v7}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onWifiSignalChanged(ZILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onMobileDataSignalChanged(ZILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onAirplaneModeChanged(Z)V

    return-void

    :cond_1
    move v8, v1

    goto :goto_0

    :cond_2
    move-object v7, v6

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-eqz v0, :cond_4

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    move-object v0, p1

    move v1, v9

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onMobileDataSignalChanged(ZILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onMobileDataSignalChanged(ZILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const v2, 0x10404a8

    const/4 v5, 0x1

    const/4 v9, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v0, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "onReceive() - RSSI_CHANGED_ACTION, WIFI_STATE, NETWORK_STATE"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWifiState(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "onReceive() - ACTION_SIM_STATE_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateSimState(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataIcon()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto :goto_0

    :cond_3
    const-string v0, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "onReceive() - SPN_STRINGS_UPDATED_ACTION"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "plmn"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v0, :cond_4

    const-string v0, "TW_TAG"

    const-string v1, "mDisplayPlmnIcon == true"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "isValidPlmn"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v8, 0x0

    :cond_4
    const-string v0, "showSpn"

    invoke-virtual {p2, v0, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "spn"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "showPlmn"

    invoke-virtual {p2, v2, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2, v8}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v0, "showSpn"

    invoke-virtual {p2, v0, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "spn"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "showPlmn"

    invoke-virtual {p2, v2, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {p0, v0, v1, v2, v8}, Lcom/android/systemui/statusbar/policy/NetworkController;->setLastNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshOperatorLogoView()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto :goto_0

    :cond_5
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "onReceive() - CONNECTIVITY_ACTION, INET_CONDITION_ACTION"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateConnectivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto/16 :goto_0

    :cond_7
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "onReceive() - ACTION_CONFIGURATION_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto/16 :goto_0

    :cond_8
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "onReceive() - ACTION_AIRPLANE_MODE_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateAirplaneMode()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateTelephonySignalStrength()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto/16 :goto_0

    :cond_9
    const-string v0, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWimaxState(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto/16 :goto_0

    :cond_b
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateNoSIMNotification()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    const-string v0, "com.sec.android.app.mms.SMS_CB_DIRECT_DISPLAY_RECEIVED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPlmn:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPlmn:Ljava/lang/String;

    const v1, 0x10404cc

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastShowSpn:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSpn:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastShowPlmn:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPlmn:Ljava/lang/String;

    const-string v0, "cbMsgBody"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    :cond_e
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto/16 :goto_0

    :cond_f
    const-string v0, "com.sec.android.app.mms.CB_CLEAR"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastShowSpn:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSpn:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastShowPlmn:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPlmn:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p0

    move v5, v9

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/policy/NetworkController;->ETH_STATE_CHANGED_ACTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "onReceive() - ETH_STATE_CHANGED_ACTIONN"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateEthernetState(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto/16 :goto_0
.end method

.method public refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V
    .locals 9

    const/4 v2, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setRoamingIcon(I)V

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataIconForCHN:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eq v0, v2, :cond_2

    const-string v0, "StatusBar.NetworkController"

    const-string v1, "refreshSignalCluster: DATA_SUSPENDED : "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setDataState(I)V

    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v0, :cond_7

    move v0, v7

    :goto_1
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setWifiIndicators(ZIILjava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetEnabled:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetConnected:Z

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetActivityIconId:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionEthernet:Ljava/lang/String;

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setEthernetIndicators(ZZIILjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    if-eqz v0, :cond_8

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    :goto_2
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWimax:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    move-object v0, p1

    move v1, v7

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;)V

    :goto_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_1
    :goto_4
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneIconId:I

    invoke-interface {p1, v7, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setIsAirplaneMode(ZI)V

    return-void

    :cond_2
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "refreshSignalCluster: else : "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setDataState(I)V

    goto :goto_0

    :cond_3
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataIconForJPN:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-nez v0, :cond_5

    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    if-eqz v0, :cond_5

    invoke-interface {p1, v8}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setDataState(I)V

    :goto_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setBtTetherState(Z)V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setDataState(I)V

    goto :goto_5

    :cond_6
    const-string v0, "STATUSBAR-NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshSignalCluster: data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setDataState(I)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setBtTetherState(Z)V

    goto/16 :goto_0

    :cond_7
    move v0, v8

    goto/16 :goto_1

    :cond_8
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    goto/16 :goto_2

    :cond_9
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowPhoneRSSIForData:Z

    if-eqz v0, :cond_a

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    :goto_6
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_a
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto :goto_6

    :cond_b
    move v7, v8

    goto/16 :goto_4
.end method

.method refreshViews()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v5, 0x0

    const-string v6, ""

    const-string v16, ""

    const-string v13, ""

    const-string v12, ""

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    move/from16 v17, v0

    if-nez v17, :cond_c

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    const-string v13, ""

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_21

    const v17, 0x7f0c00f4

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    sget-boolean v17, Lcom/android/systemui/statusbar/BaseStatusBar;->canStatusBarHide:Z

    if-nez v17, :cond_2a

    sget-boolean v17, Lcom/android/systemui/statusbar/BaseStatusBar;->supportVoice:Z

    if-eqz v17, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ServiceState;->getState()I

    move-result v14

    if-eqz v14, :cond_1

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v0, v14, :cond_1

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v0, v14, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0c0078

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherIconId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0c00d4

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    const-string v17, "STATUSBAR-NetworkController"

    const-string v18, "mBluetoothTethered: mDataTypeIconId is BT tether icon"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetConnected:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    const v17, 0x7f0c0101

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_4
    sget-boolean v17, Lcom/android/systemui/statusbar/Feature;->mUseKorRSSIAlgorithm:Z

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAirPlane:Z

    move/from16 v17, v0

    if-eqz v17, :cond_31

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    move/from16 v17, v0

    if-eqz v17, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v17

    if-nez v17, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v17

    if-nez v17, :cond_31

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0c00d5

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    const v17, 0x7f020121

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneIconId:I

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2d

    const-string v13, ""

    :cond_7
    :goto_4
    sget-boolean v17, Lcom/android/systemui/statusbar/Feature;->mUseKorRSSIAlgorithm:Z

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAirPlane:Z

    move/from16 v17, v0

    if-nez v17, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    move/from16 v17, v0

    const v18, 0x7f02021e

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    :cond_8
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    :cond_9
    sget-boolean v17, Lcom/android/systemui/statusbar/Feature;->mRoamingOngoingForVZW:Z

    if-eqz v17, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateRomaingNotification()V

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v0, v5, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastEthernetIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastEthernetActivityIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetActivityIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWimaxIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastRoamingIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastAirplaneMode:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataState:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastBluetoothTethered:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_37

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalClusters:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_36

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V

    goto :goto_5

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    move/from16 v17, v0

    if-eqz v17, :cond_10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    :goto_6
    sget-boolean v17, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v17, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mATTNetworkName:Ljava/lang/String;

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    move/from16 v17, v0

    if-eqz v17, :cond_20

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeATTstyle:Z

    move/from16 v17, v0

    if-nez v17, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeTMOstyle:Z

    move/from16 v17, v0

    if-eqz v17, :cond_16

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeATTstyle:Z

    move/from16 v17, v0

    if-eqz v17, :cond_15

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    :cond_f
    :goto_7
    move-object v6, v13

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnected:Z

    move/from16 v17, v0

    if-nez v17, :cond_11

    if-eqz v9, :cond_14

    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v17

    if-nez v17, :cond_12

    if-eqz v9, :cond_13

    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    goto :goto_6

    :cond_13
    const-string v13, ""

    goto :goto_6

    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    goto :goto_6

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto :goto_7

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto :goto_7

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    move-object/from16 v17, v0

    const/16 v18, 0x3

    aget v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto :goto_7

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto :goto_7

    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    move/from16 v17, v0

    if-eqz v17, :cond_1f

    const v17, 0x7f020126

    sget-boolean v1, Lcom/android/systemui/statusbar/MinitSettings;->mShowDataArrows:Z

    if-nez v1, :cond_17

    const v17, 0x7f0202f8

    :cond_17
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    :goto_8
    sget-boolean v17, Lcom/android/systemui/statusbar/Feature;->mDataIconForCHN:Z

    if-eqz v17, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v17

    if-eqz v17, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    move/from16 v17, v0

    if-eqz v17, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ServiceState;->getState()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_f

    const-string v17, "StatusBar.NetworkController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "refreshViews: DATA_SUSPENDED : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto/16 :goto_7

    :pswitch_3
    const v17, 0x7f020122

    sget-boolean v1, Lcom/android/systemui/statusbar/MinitSettings;->mStockDataIcons:Z

    if-nez v1, :cond_19

    const v17, 0x7f0202f5

    :cond_19
    sget-boolean v1, Lcom/android/systemui/statusbar/MinitSettings;->mShowDataArrows:Z

    if-nez v1, :cond_1a

    const v17, 0x7f0202f8

    :cond_1a
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto :goto_8

    :pswitch_4
    const v17, 0x7f020129

    sget-boolean v1, Lcom/android/systemui/statusbar/MinitSettings;->mStockDataIcons:Z

    if-nez v1, :cond_1b

    const v17, 0x7f0202f7

    :cond_1b
    sget-boolean v1, Lcom/android/systemui/statusbar/MinitSettings;->mShowDataArrows:Z

    if-nez v1, :cond_1c

    const v17, 0x7f0202f8

    :cond_1c
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto/16 :goto_8

    :pswitch_5
    const v17, 0x7f020124

    sget-boolean v1, Lcom/android/systemui/statusbar/MinitSettings;->mStockDataIcons:Z

    if-nez v1, :cond_1d

    const v17, 0x7f0202f6

    :cond_1d
    sget-boolean v1, Lcom/android/systemui/statusbar/MinitSettings;->mShowDataArrows:Z

    if-nez v1, :cond_1e

    const v17, 0x7f0202f8

    :cond_1e
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto/16 :goto_8

    :cond_1f
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto/16 :goto_8

    :cond_20
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto/16 :goto_0

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_2

    :goto_9
    sget-boolean v17, Lcom/android/systemui/statusbar/Feature;->mHideWifiInAndOut:Z

    if-eqz v17, :cond_22

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    :cond_22
    sget-boolean v17, Lcom/android/systemui/statusbar/Feature;->mShowCarrierWifiIcon:Z

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiCarrierIcon:[[I

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    goto/16 :goto_1

    :pswitch_6
    const v17, 0x7f020122

    sget-boolean v1, Lcom/android/systemui/statusbar/MinitSettings;->mStockDataIcons:Z

    if-nez v1, :cond_23

    const v17, 0x7f0202f5

    :cond_23
    sget-boolean v1, Lcom/android/systemui/statusbar/MinitSettings;->mShowDataArrows:Z

    if-nez v1, :cond_24

    const v17, 0x7f0202f8

    :cond_24
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    goto :goto_9

    :pswitch_7
    const v17, 0x7f020129

    sget-boolean v1, Lcom/android/systemui/statusbar/MinitSettings;->mStockDataIcons:Z

    if-nez v1, :cond_25

    const v17, 0x7f0202f7

    :cond_25
    sget-boolean v1, Lcom/android/systemui/statusbar/MinitSettings;->mShowDataArrows:Z

    if-nez v1, :cond_26

    const v17, 0x7f0202f8

    :cond_26
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    goto :goto_9

    :pswitch_8
    const v17, 0x7f020124

    sget-boolean v1, Lcom/android/systemui/statusbar/MinitSettings;->mStockDataIcons:Z

    if-nez v1, :cond_27

    const v17, 0x7f0202f6

    :cond_27
    sget-boolean v1, Lcom/android/systemui/statusbar/MinitSettings;->mShowDataArrows:Z

    if-nez v1, :cond_28

    const v17, 0x7f0202f8

    :cond_28
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    goto :goto_9

    :pswitch_9
    const v17, 0x7f020126

    sget-boolean v1, Lcom/android/systemui/statusbar/MinitSettings;->mShowDataArrows:Z

    if-nez v1, :cond_29

    const v17, 0x7f0202f8

    :cond_29
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    goto :goto_9

    :cond_2a
    move-object/from16 v6, v16

    goto/16 :goto_2

    :cond_2b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2c

    const-string v16, ""

    goto/16 :goto_3

    :cond_2c
    const v17, 0x7f0c00f3

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_3

    :cond_2d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    move/from16 v17, v0

    if-eqz v17, :cond_30

    const-string v16, ""

    sget-boolean v17, Lcom/android/systemui/statusbar/BaseStatusBar;->canStatusBarHide:Z

    if-nez v17, :cond_2e

    sget-boolean v17, Lcom/android/systemui/statusbar/BaseStatusBar;->supportVoice:Z

    if-eqz v17, :cond_2f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    :cond_2e
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto/16 :goto_4

    :cond_2f
    move-object v6, v13

    goto :goto_a

    :cond_30
    const v17, 0x7f0c00f3

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v6, v16

    goto :goto_a

    :cond_31
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    move/from16 v17, v0

    if-nez v17, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    move/from16 v17, v0

    if-nez v17, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    move/from16 v17, v0

    if-nez v17, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    move/from16 v17, v0

    if-nez v17, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetConnected:Z

    move/from16 v17, v0

    if-nez v17, :cond_7

    const v17, 0x7f0c00f3

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-boolean v17, Lcom/android/systemui/statusbar/BaseStatusBar;->canStatusBarHide:Z

    if-nez v17, :cond_33

    sget-boolean v17, Lcom/android/systemui/statusbar/BaseStatusBar;->supportVoice:Z

    if-eqz v17, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v17, v0

    if-eqz v17, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ServiceState;->getState()I

    move-result v14

    if-eqz v14, :cond_32

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v0, v14, :cond_32

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v0, v14, :cond_33

    :cond_32
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    :cond_33
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    move/from16 v17, v0

    if-eqz v17, :cond_34

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    move/from16 v17, v0

    if-eqz v17, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v17, v0

    :goto_c
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getRoamingIcon()V

    goto/16 :goto_4

    :cond_34
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    goto :goto_b

    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v17, v0

    goto :goto_c

    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_37

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    goto :goto_d

    :cond_37
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastAirplaneMode:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_38

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastAirplaneMode:Z

    :cond_38
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastBluetoothTethered:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_39

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastBluetoothTethered:Z

    :cond_39
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v10, 0x0

    :goto_e
    if-ge v10, v2, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    move/from16 v17, v0

    if-nez v17, :cond_3a

    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_f
    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    :cond_3a
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_f

    :cond_3b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionIconId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v10, 0x0

    :goto_10
    if-ge v10, v2, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    :cond_3c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v10, 0x0

    :goto_11
    if-ge v10, v2, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    move/from16 v17, v0

    if-nez v17, :cond_3d

    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_12
    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    :cond_3d
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_12

    :cond_3e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastEthernetIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastEthernetIconId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v10, 0x0

    :goto_13
    if-ge v10, v2, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetIconId:I

    move/from16 v17, v0

    if-nez v17, :cond_3f

    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_14
    add-int/lit8 v10, v10, 0x1

    goto :goto_13

    :cond_3f
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionEthernet:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_14

    :cond_40
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastEthernetActivityIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetActivityIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_42

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetActivityIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastEthernetActivityIconId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetActivityIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v10, 0x0

    :goto_15
    if-ge v10, v2, :cond_42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetActivityIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetActivityIconId:I

    move/from16 v17, v0

    if-nez v17, :cond_41

    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_16
    add-int/lit8 v10, v10, 0x1

    goto :goto_15

    :cond_41
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEthernetActivityIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionEthernet:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_16

    :cond_42
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWimaxIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_44

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWimaxIconId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v10, 0x0

    :goto_17
    if-ge v10, v2, :cond_44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    move/from16 v17, v0

    if-nez v17, :cond_43

    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_18
    add-int/lit8 v10, v10, 0x1

    goto :goto_17

    :cond_43
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWimax:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_18

    :cond_44
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedSignalIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v7, :cond_45

    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedSignalIconId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedSignalIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v10, 0x0

    :goto_19
    if-ge v10, v2, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedSignalIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    invoke-virtual {v15, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_19

    :cond_45
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_47

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v10, 0x0

    :goto_1a
    if-ge v10, v2, :cond_47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    move/from16 v17, v0

    if-nez v17, :cond_46

    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1b
    add-int/lit8 v10, v10, 0x1

    goto :goto_1a

    :cond_46
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1b

    :cond_47
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v5, :cond_49

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v10, 0x0

    :goto_1c
    if-ge v10, v2, :cond_49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    if-nez v5, :cond_48

    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1d
    add-int/lit8 v10, v10, 0x1

    goto :goto_1c

    :cond_48
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v15, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1d

    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedLabel:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4a

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedLabel:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedLabelViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v10, 0x0

    :goto_1e
    if-ge v10, v2, :cond_4a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedLabelViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    invoke-virtual {v15, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1e

    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLabelViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v10, 0x0

    :goto_1f
    if-ge v10, v2, :cond_4c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLabelViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v17, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4b

    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_20
    add-int/lit8 v10, v10, 0x1

    goto :goto_1f

    :cond_4b
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_20

    :cond_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileLabelViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v10, 0x0

    :goto_21
    if-ge v10, v2, :cond_4f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileLabelViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    sget-boolean v1, Lcom/android/systemui/statusbar/MinitSettings;->mUseCustomCarrierText:Z

    if-eqz v1, :cond_4d

    sget-object v13, Lcom/android/systemui/statusbar/MinitSettings;->mCustomCarrierText:Ljava/lang/String;

    :cond_4d
    sget-boolean v1, Lcom/android/systemui/statusbar/MinitSettings;->mHideCarrierText:Z

    if-nez v1, :cond_4e

    const-string v13, ""

    :cond_4e
    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_21

    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mATTMobileLabelViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v10, 0x0

    :goto_22
    if-ge v10, v2, :cond_51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mATTMobileLabelViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getVisibility()I

    move-result v17

    if-nez v17, :cond_50

    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v15, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v17, "STATUSBAR-NetworkController"

    const-string v18, "update carrier label"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_23
    add-int/lit8 v10, v10, 0x1

    goto :goto_22

    :cond_50
    invoke-virtual {v15, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_23

    :cond_51
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastRoamingIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_52

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastRoamingIconId:I

    :cond_52
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataState:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_53

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataState:I

    :cond_53
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public setStackedMode(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataAndWifiStacked:Z

    return-void
.end method

.method public updateCarrier()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    return-void
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_DisplaySpnOnlyInCaseSamePlmn"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p4, :cond_0

    if-eqz p2, :cond_0

    if-ne p1, v4, :cond_0

    if-ne p3, v4, :cond_0

    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v4, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mShowLgtLabelType:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isLgtRoamingIMSIEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->displayingRoamingNetType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mShowLgtLabelType:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isLgtRoamingIMSIEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p4}, Lcom/android/systemui/statusbar/policy/NetworkController;->displayingRoamingIMSI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :cond_4
    if-eqz v0, :cond_9

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, ""

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mATTNetworkName:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    :goto_0
    return-void

    :cond_5
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->canStatusBarHide:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x6

    if-le v2, v3, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x5

    invoke-virtual {v1, v5, v3}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mATTNetworkName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    goto :goto_0

    :cond_6
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->canStatusBarHide:Z

    if-nez v2, :cond_7

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/16 v3, 0xb

    if-le v2, v3, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xa

    invoke-virtual {v1, v5, v3}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mATTNetworkName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    goto :goto_0

    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mATTNetworkName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    goto :goto_0

    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    goto :goto_0

    :cond_9
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v2, :cond_a

    const-string v2, ""

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mATTNetworkName:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    iput-object p6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCB:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_DisplaySpnOnlyInCaseSamePlmn"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p4, :cond_0

    if-eqz p2, :cond_0

    if-ne p1, v4, :cond_0

    if-ne p3, v4, :cond_0

    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v4, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :cond_1
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :cond_3
    if-eqz p5, :cond_5

    if-eqz p6, :cond_5

    if-eqz v0, :cond_4

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    :goto_0
    return-void

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    goto :goto_0
.end method
