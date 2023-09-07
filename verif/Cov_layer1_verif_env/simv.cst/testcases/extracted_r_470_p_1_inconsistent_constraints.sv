class c_470_1;
    integer i = -468;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_470_1;
    c_470_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z00100zx0xz0z1x00zzzxz001x011zzxxxxzxxzzxxzzzxzzxzxzxzxzzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
