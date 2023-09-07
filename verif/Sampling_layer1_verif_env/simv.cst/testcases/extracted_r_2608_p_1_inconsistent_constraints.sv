class c_2608_1;
    integer i = -433;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2608_1;
    c_2608_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0x0z0x101110x1100011x10x1111x0xxzxzxzxxxzxxxzzxzxxzxxxxxzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
