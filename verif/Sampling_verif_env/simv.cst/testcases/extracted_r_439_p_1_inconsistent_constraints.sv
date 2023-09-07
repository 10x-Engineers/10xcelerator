class c_439_1;
    integer i = 439;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_439_1;
    c_439_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1zz1xzx1zzz10z001z101z1z0xx101xzxzxxxzzzzzxzxxxzxzzzxxzxxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
