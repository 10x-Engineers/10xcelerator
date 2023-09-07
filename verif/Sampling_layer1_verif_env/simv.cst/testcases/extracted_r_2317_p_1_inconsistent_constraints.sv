class c_2317_1;
    integer i = -385;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2317_1;
    c_2317_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz10zzxz1xx00010z1101100xzx1zx0xzxxxxxzxxzxzxzzxxzzxzzzzxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
