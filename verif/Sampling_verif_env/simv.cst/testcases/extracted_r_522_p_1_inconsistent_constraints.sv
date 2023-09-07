class c_522_1;
    integer i = 522;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_522_1;
    c_522_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11100010xz0z1zzz1z00xz10xxxz0z1zzzzzzzxzzxxzxzxzxzxzxzzzxxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
