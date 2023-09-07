class c_1270_1;
    integer i = -210;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1270_1;
    c_1270_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00000x0z00xxzxxx11xxzzz0z001z0xzzzxxxxxzxxzzzzzxxxxzxxxxzzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
