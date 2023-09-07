class c_555_1;
    integer i = -553;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_555_1;
    c_555_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1x1zx1z0zxzzx01x0zxzxx1x0011x00zzzzxxxxxxzzzxxzzzxxzzxzzzxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
