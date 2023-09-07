class c_139_1;
    integer i = 139;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_139_1;
    c_139_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zx10110x1100z0x0x0zxx1x101x0xz1xxzzxzxzxxxzzxxxzzxzxxxzxzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
