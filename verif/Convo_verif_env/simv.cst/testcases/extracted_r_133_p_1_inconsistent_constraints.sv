class c_133_1;
    integer i = 133;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_133_1;
    c_133_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01x111x11x00zzx1z111zxz1xz11z0zzzzxzxzzzxzzzzzzzxxzxxxzzzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
