class c_470_1;
    integer i = 470;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_470_1;
    c_470_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00111101x101xz0zzxz10xx01x1x1x0zxxxzxzzxxxzzxzxxxzzzzxzzxxzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
