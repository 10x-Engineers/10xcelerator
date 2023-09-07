class c_1500_1;
    integer i = -248;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1500_1;
    c_1500_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100101z1zxz1xz01z1xxzz1z1x110111xxzxzzzzxxzzzzxzxzzxxzxzzxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
