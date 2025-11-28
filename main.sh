#!/bin/zsh
SCRIPT_DIR=$(dirname "$0")

while true; do
    echo "============================================"
    echo "       Linux System Monitoring Toolkit     "
    echo "============================================"
    echo "1) 포트/소켓 상태 분석"
    echo "2) 네트워크 지연 분석"
    echo "3) 저장장치/메모리 분석"
    echo "4) 프로세스/CPU 사용량 분석"
    echo "5) 종료"
    echo "--------------------------------------------"
    read "menu?번호 선택: "

    case $menu in
        1)
            echo "[ 실행 ] 포트/소켓 분석 ..."
            zsh "$SCRIPT_DIR/modules/net_port.sh"
            ;;
        2)
            echo "[ 실행 ] 네트워크 지연 분석 ..."
            zsh "$SCRIPT_DIR/modules/net_latency.sh"
            ;;
        3)
            echo "[ 실행 ] 저장장치/메모리 분석 ..."
            zsh "$SCRIPT_DIR/modules/storage.sh"
            ;;
        4)
            echo "[ 실행 ] 프로세스/CPU 사용량 분석 ..."
            zsh "$SCRIPT_DIR/modules/process.sh"
            ;;
        5)
            echo "프로그램을 종료합니다."
            exit 0 ;;
        *)
            echo " 잘못된 입력입니다. 다시 입력하세요." ;;
    esac
done
