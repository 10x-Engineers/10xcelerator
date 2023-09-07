class c_2689_1;
    integer i = -447;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2689_1;
    c_2689_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x01x100xz0zz11zzz01000xz0xx0zxxzxxzxxxzxzxxxxzzxzxzzzxzzzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
