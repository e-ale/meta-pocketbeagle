PACKAGES:prepend = "${PN}-examples"
RDEPENDS:${PN}:append = "${PN}-examples"

do_install:append:ti33x() {
	for E in PRU_ADC_onChip PRU_Hardware_UART PRU_IEP PRU_MAC_Multiply_Accum PRU_access_const_table PRU_edmaConfig PRU_gpioToggle
	do
		install -m 644 ${S}/examples/${PLATFORM}/${E}/gen/${E}.out \
			${D}${nonarch_base_libdir}/firmware/pru
	done
	for E in PRU_Direct_Connect
	do
		for i in 0 1
		do
			install -m 0644 ${S}/examples/${PLATFORM}/${E}${i}/gen/${E}${i}.out \
				${D}${nonarch_base_libdir}/firmware/pru
		done
	done
}

FILES:${PN}-examples = " \
	${nonarch_base_libdir}/firmware/pru/PRU_ADC_onChip.out \
	${nonarch_base_libdir}/firmware/pru/PRU_Hardware_UART.out \
	${nonarch_base_libdir}/firmware/pru/PRU_IEP.out \
	${nonarch_base_libdir}/firmware/pru/PRU_MAC_Multiply_Accum.out \
	${nonarch_base_libdir}/firmware/pru/PRU_access_const_table.out \
	${nonarch_base_libdir}/firmware/pru/PRU_edmaConfig.out \
	${nonarch_base_libdir}/firmware/pru/PRU_gpioToggle.out \
	${nonarch_base_libdir}/firmware/pru/PRU_Direct_Connect0.out \
	${nonarch_base_libdir}/firmware/pru/PRU_Direct_Connect1.out \
	"
INSANE_SKIP:${PN}-examples += "arch buildpaths"
