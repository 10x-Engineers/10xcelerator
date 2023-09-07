class c_648_1;
    integer i = -646;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_648_1;
    c_648_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01x00z1zz110zxzx101xx100x00zzxx0zzxxxxzxzzzxxzxxzxzzzxzxzxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
