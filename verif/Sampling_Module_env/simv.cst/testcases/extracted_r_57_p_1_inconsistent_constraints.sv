class c_57_1;
    integer i = 57;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_57_1;
    c_57_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00zzx1xx001100z1zzx011x10z0xzzx0xzxxxzxxxxzzzxxzxzxzzzzxzzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram