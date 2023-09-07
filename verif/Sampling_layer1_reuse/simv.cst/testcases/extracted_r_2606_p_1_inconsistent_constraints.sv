class c_2606_1;
    integer i = -433;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2606_1;
    c_2606_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1011x00110110zz11zz10x01xz10x1xxxzxxxxxzzxzzxxxzzzzzzxxzxzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
