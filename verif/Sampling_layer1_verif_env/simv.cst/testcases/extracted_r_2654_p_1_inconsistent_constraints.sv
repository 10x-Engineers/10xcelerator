class c_2654_1;
    integer i = -441;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2654_1;
    c_2654_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzxx0z1001z01zxzx0zxz1011zxzx11xxzzxxzxzxxxxzzxxzxzxxzzzzzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
