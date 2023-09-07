class c_221_1;
    integer i = -35;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_221_1;
    c_221_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0001zz1x1z01z01101zz1x0z0z10z1z1zxxzxzxzzxzxzxxzxxxzzzxzxzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
