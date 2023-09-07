class c_3122_1;
    integer i = -519;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3122_1;
    c_3122_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010x0z01x11100z0xzz0x10z0zzx0x1xxzzzzxxzzxxzzxxxxzxzzxxzxxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
