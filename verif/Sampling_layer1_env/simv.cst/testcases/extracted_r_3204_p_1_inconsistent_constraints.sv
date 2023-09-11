class c_3204_1;
    integer i = -532;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3204_1;
    c_3204_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1011x000xx0zz1x1xz001011z1010001xxxzxzzzzzzxzzzzzzxzzxxzxzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
