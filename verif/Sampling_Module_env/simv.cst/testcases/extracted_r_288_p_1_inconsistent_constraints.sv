class c_288_1;
    integer i = 288;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_288_1;
    c_288_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzzx0x001zxzxx0x10zz0xz0zz1z11zzxxzxzzxxxzzzxxxzzxzzxzxxxxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
