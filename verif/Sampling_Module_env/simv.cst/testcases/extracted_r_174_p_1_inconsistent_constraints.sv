class c_174_1;
    integer i = 174;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_174_1;
    c_174_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zz1zzxx101xz10zx01zxzz0xx0x0zxzzxzxxxzxzzxxxxzzzzzxxzxzzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
