class c_112_1;
    integer i = -110;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_112_1;
    c_112_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00xzzx1zz111xx0z0x010x001z11z1zzxxzxxzxzxxxxzxzzzzxxzxzxzxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
