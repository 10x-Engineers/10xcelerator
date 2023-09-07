class c_307_1;
    integer i = 307;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_307_1;
    c_307_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0x00001zzxxz11x1xx1x1100z01xzzxxxzxxzxzzxxxzzzzzzxzzzzxzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
