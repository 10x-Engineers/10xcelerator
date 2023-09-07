class c_861_1;
    integer i = -142;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_861_1;
    c_861_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1z00x1zz1zz011z0x0x1xzz01zxx1xxzxzxxxzzxxzxxxzxzxxzxxzzzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
