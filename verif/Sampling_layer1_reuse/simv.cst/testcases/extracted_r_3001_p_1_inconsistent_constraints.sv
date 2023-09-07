class c_3001_1;
    integer i = -499;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3001_1;
    c_3001_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00x011zz0z1010z1xx101101zxx0111xzxzxzzzxxzzzzxxxzxxxxxzzxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
