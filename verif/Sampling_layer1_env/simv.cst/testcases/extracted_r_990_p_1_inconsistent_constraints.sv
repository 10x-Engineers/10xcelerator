class c_990_1;
    integer i = -163;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_990_1;
    c_990_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11x1x01z1xzx11x1z1zz1111101zxzx0xzzxxxxzxzzzzzxxxzxzzzzxxxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
