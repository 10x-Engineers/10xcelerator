class c_3376_1;
    integer i = -561;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3376_1;
    c_3376_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xx1x01z1zxzz11z1z1zxxxzx11000xxxxzzzzxzzxxxxzzxzzxzxxxxxzzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
